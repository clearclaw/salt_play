salt__pkgs:
  pkgrepo.managed:
    - name: deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main
    - humanname: saltstack
    - key_url: https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub

  pkg.latest:
    - pkgs:
      - apt-transport-https
      - python-boto
      - python-pygit2
{% if "salt" in grains.roles %}
      - salt-master
      - salt-syndic
      - salt-cloud
{% endif %}
      - salt-minion
