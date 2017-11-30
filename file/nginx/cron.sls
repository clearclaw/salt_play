nginx__cron:
  file.managed:
    - name: /etc/cron.daily/nginx_restart
    - source: salt://nginx/files/nginx_restart
    - user: www-data
    - group: www-data
    - mode: 0755
    