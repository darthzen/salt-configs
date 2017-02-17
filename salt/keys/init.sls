/root/.ssh/authorized_keys:
    file.managed:
        - source: salt://keys/pikachu.pub
        - user: root
        - group: root
        - file_mode: 744
        - dir_mode:700
        - makedirs: True
