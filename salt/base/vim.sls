/etc/vimrc:
    file.managed:
        - source: salt://base/vimrc
        - user: root
        - group: root
        - file_mode: 744
