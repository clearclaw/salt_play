nginx__service:
  service.running:
    - name: nginx
    - enable: True
    - reload: True
    - watch:      
      - file: /etc/nginx/sites-available/site.conf
