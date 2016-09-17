nf_conntrack:
  file.managed:
    - name: /etc/modprobe.d/nf_conntrack.conf
    - source: salt://init/files/nf_conntrack.conf
    - user: root
    - group: root
    - mode: 644
