localtime:
  file.managed:
    - source: /usr/share/zoneinfo/Asia/Shanghai
    - name: /etc/localtime
    - user: root
    - group: root
    - mode: 644
