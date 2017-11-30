nginx__site:
  file.managed:
    - name: /etc/nginx/sites-available/site.conf
    - source: salt://nginx/files/site.conf
    - user: www-data
    - group: www-data
    - mode: 0640
    
nginx__site_enable:
  file.symlink:
    - name: /etc/nginx/sites-enabled/site.conf
    - target: /etc/nginx/sites-available/site.conf
    - user: www-data
    - group: www-data
    - mode: 0640
    
nginx__site_nodefault:
  file.absent:
    - name: /etc/nginx/sites-enabled/default
