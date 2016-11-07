/srv/www/htdocs/repo:
    - mount.mounted:
        - device: 192.168.124.1:/exports/smt
        - fstype: nfs
        - mkmnt: True
        - opts:
            - nfsvers=3
            - ro

