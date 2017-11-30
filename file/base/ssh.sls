base__pam_sshd:
  file.managed:
    - name: /etc/pam.d/sshd
    - source: salt://base/files/pam.d-sshd
    - user: root
    - group: root
    - mode: 644
    
base__ssh_config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://base/files/sshd_config
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
{% if "bastion" in grains.roles or "salt" in grains.roles %}
      special_method: ",keyboard-interactive"
{% else %}
      special_method: ""
{%endif %}
{% if "salt" in grains.roles or "bastion" in grains.roles %}
      mfa_setting: "yes"
{% else %}
      mfa_setting: "no"
{%endif %}

  service.running:  
    - name: ssh
    - reload: True
    - enable: True
    - watch:      
      - file: /etc/ssh/sshd_config
