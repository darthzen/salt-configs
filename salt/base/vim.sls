/etc/vimrc:
    file.managed:
        - source: salt://base/root/etc/vimrc
        - user: root
        - group: root
        - file_mode: 744
