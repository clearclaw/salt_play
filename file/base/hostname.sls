{% set region = grains.region %}
{% set cloud = grains.cloud %}
{% set env = grains.environment %}
{% set roles = grains.roles %}
{% set role = roles[0] %}
{% set hostname = "%s-%s-%s--%s" % (region, cloud, env, role) %}
{% set dns_prefix = "%s.%s.%s" % (env, cloud, region) %}
{% set dns_suffix = ".kanga.nu" %}
{% set domainname = dns_prefix + dns_suffix %}

hostname_set:
  network.system:
      - enabled: True
      - hostname: {{ hostname }}.{{ domainname }}
      - nisdomain: domainname

  file.managed:
    - name: /etc/hostname
    - user: root
    - group: root
    - mode: 644
    - contents: {{ hostname }}

  cmd.run:
    - name: hostnamectl set-hostname {{ hostname }}
    - user: root

  host.present: 
    - name: {{ hostname }}
    - ip: 127.0.0.1
