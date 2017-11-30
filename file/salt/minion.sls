{% set cfiles = ["custom.conf", "failhard.conf", "schedule.conf",] %}

{% for fname in cfiles %}
salt__minion_{{ fname }}:
  file.managed:
    - name: /etc/salt/minion.d/{{ fname }}
    - user: root
    - group: root
    - mode: 0644
    - source: salt://salt/files/minion/{{ fname }}
{% endfor %}

salt__minion_restart:
  cmd.run:
    - name: "salt-call --local service.restart salt-minion"
    - bg: True
    - watch:
{% for fname in cfiles %}
      - file: /etc/salt/minion.d/{{ fname }}
{% endfor %}
