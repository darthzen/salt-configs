/srv/www/htdocs/repo:
    mount.mounted:
        - device: 192.168.124.1:/exports/smt
        - fstype: nfs
        - mkmnt: True
        - persist: True 
        - opts:
            - vers=3
            - ro

