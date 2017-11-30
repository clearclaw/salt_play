nginx__ssl_dir:
  file.directory:
      - name: /etc/nginx/ssl
      - makedirs: True
      - user: root
      - group: root
      - mode: 0700

nginx__ssl_key:
  file.managed:
      - name: /etc/nginx/ssl/selfsigned.key
      - makedirs: True
      - user: root
      - group: root
      - mode: 0700
      - contents_pillar: ssl:{{ grains["roles"][0] }}:key
      - force: True

nginx__ssl_crt:
  file.managed:
      - name: /etc/nginx/ssl/selfsigned.crt
      - makedirs: True
      - user: root
      - group: root
      - mode: 0700
      - contents_pillar: ssl:{{ grains["roles"][0] }}:crt
      - force: True

nginx__ssl_dhparam:
  cmd.run:
    - name: openssl dhparam -out /etc/nginx/ssl/dhparam.pem 2048
    - user: root
 