kernel-default:
    pkg.installed: []

nfs-client:
    pkg.installed: []
    service.running:
        - name: nfs
        - enable: True
        - require:
            - pkg: 
                - nfs-client
                - kernel-default

nfs-idmapd:
    service.running:
        - enable: True
        - require:
            - pkg: nfs-client

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

