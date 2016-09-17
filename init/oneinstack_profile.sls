oneinstack_profile:
  file.managed:
    - name: /etc/profile.d/oneinstack_profile.sh
    - source: salt://init/files/oneinstack_profile.sh
    - user: root
    - group: root
    - mode: 644

/etc/bashrc:
  file.append:
    - text:
      - PROMPT_COMMAND='{ msg=$(history 1 | { read x y; echo $y; });logger "[euid=$(whoami)]":$(who am i):[`pwd`]"$msg"; }'
