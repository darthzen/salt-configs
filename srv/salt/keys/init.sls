/root/.ssh/authorized_keys:
    file.managed:
        - source: salt://keys/authorized_keys
        - user: root
        - group: root
        - file_mode: 744
        - dir_mode:700
        - makedirs: True

