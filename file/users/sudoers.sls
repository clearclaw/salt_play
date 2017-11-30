users__sudoers:

  file.managed:
    - name: /etc/sudoers.d/sudo_group
    - user: root
    - group: root
    - mode: 0640
    - contents: |
        %sudo ALL=(ALL:ALL) ALL
