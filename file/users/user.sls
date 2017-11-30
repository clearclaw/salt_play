{% set users = pillar.get ("users", {}) %}

user__homebase:
  file.directory:
    - name: /srv/home
    - user: root
    - group: root
    - mode: 755
    
{% for typ in ["roles", "users"] %}
  {% for user, props in 
      users.active[typ].items () 
    if grains.roles | intersect (props.roles)
      or "__ALL__" in props.roles %}
      {% set homedir = "/srv/home/" + user %}
user_active__{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ props.name }}
    - uid: {{ props.uid }}
    - gid: {{ props.gid }}
    - shell: /bin/{{ props.shell }}
    - home: {{ homedir }}
    - gid_from_name: True
    - createhome: {{ props.get ("createhome", "False") }}
    {% if props.get ("groups") %}
    - groups: {{ props.groups }}
    {% endif %}
    {% if props.get ("password") %}
    - password: {{ props.password }}
    {% endif %}

    {% if props.get ("createhome") %}
user_active__{{ user }}__home_dir:
  file.directory:
    - name: {{ homedir }}
    - user: {{ user }}
    - group: {{ user }}
      {% if props.get ("secure") %}
    - mode: 700
      {% else %}
    - mode: 755
      {% endif %}

user_active__{{ user }}__ssh_dir:
  file.directory:
    - name: {{ homedir }}/.ssh
    - user: {{ user }}
    - group: {{ user }}
    - mode: 700

user_active__{{ user }}__ssh_config__gone:
  file.absent:
    - name: {{ homedir }}/.ssh/config

user_active__{{ user }}__ssh_config:
  file.managed:
    - name: {{ homedir }}/.ssh/config
    - user: {{ user }}
    - group: {{ user }}
    - mode: 600
    - contents: |
        Host *
          ForwardAgent yes

      {% if typ != "roles" %}
      {# 
        This silliness is because file.managed can't manage multiple
        sources 
      #}
    
      {% if props.ssh_keys != [] %}
user_active__{{ user }}__ssh_authorised_keys__delete:
  file.absent:
    - name: {{ homedir }}/.ssh/authorized_keys
  
user_active__{{ user }}__ssh_authorised_keys__touch:
  file.managed:
    - name: {{ homedir }}/.ssh/authorized_keys
    - user: {{ user }}
    - group: {{ user }}
    - mode: 0600    
    - makedirs: True
    - content: ""
      
user_active__{{ user }}__ssh_authorised_keys:
  file.append:
    - name: {{ homedir }}/.ssh/authorized_keys
    - sources:
          {% for u in props.get ("ssh_keys", []) %}
      - salt://users/files/{{ user }}__ssh.pubkey
          {% endfor %}
        {% endif %}  
      
        {% if props.get ("mfa_config") %}
user_active__{{ user }}__mfa_config:
  file.managed:
    - name: {{ homedir }}/.google_authenticator
    - user: {{ user }}
    - group: {{ user }}
    - mode: 0400
    - contents_pillar: users:active:users:{{ user }}:mfa_config
        {% endif %}

        {% if props.get ("custom_env")  %}
user_active__{{ user }}__custom_files:
  file.managed: 
    - name: {{ homedir }}/{{ user }}__env.tar.gz
    - source: salt://users/files/{{ user }}__env.tar.gz
    - user: {{ user }}
    - group: {{ user }}
    - mode: 0600
    
  archive.extracted:
    - name: {{ homedir }}
    - source: salt://users/files/{{ user }}__env.tar.gz
    - archive_format: tar
    - user: {{ user }}
    - group: {{ user }}
        {% endif %}
      {% endif %}
    {% endif %}

  {% endfor %}
{% endfor %}
