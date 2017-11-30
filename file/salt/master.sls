{% set cfiles = ["custom.conf", "files.conf--SAVE",
                 "gitfs.conf--SAVE",] %}
{% if "salt" in grains.roles %}
  {% if grains.environment != "test" %}
    {% set cfiles = cfiles + ["gitfs.conf",] %}
  {% endif %}
  {% for fname in cfiles %}
salt__master_{{ fname }}:
  file.managed:
    - name: /etc/salt/master.d/{{ fname }}
    - user: root
    - group: root
    - mode: 0644
    - source: salt://salt/files/master/{{ fname }}
  {% endfor %}

salt__master_restart:
  cmd.run:                                                            
    - name: "salt-call --local service.restart salt-master"
    - bg: True
    - watch:   
  {% for fname in cfiles %}
      - file: /etc/salt/master.d/{{ fname }}
  {% endfor %}
{% endif %}
