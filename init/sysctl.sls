sysctl:
  file.managed:
    - name: /etc/sysctl.conf
    - source: salt://init/files/sysctl.conf
    - user: root
    - group: root
    - mode: 644
