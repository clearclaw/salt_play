nginx__content:
  file.managed:
    - name: /var/www/html/hello_world.html
    - force: True
    - user: www-data
    - group: www-data
    - mode: 644
    - contents: |
        <html>
          <head>
            <title>SynAck sample</title>
          </head>
          <body>
            <h1>Hello World</h1>
          </body>
        </html>        
    - replace: True
