nfs-client:
    pkg.installed

/srv/www/htdocs/repo:
    mount.mounted:
        - require:
            - pkg: nfs-client
        - device: 192.168.124.1:/exports/smt
        - fstype: nfs
        - mkmnt: True
        - persist: True 
        - opts:
            - vers=3
            - ro

