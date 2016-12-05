/root/.ssh/authorized_keys:
    file.managed:
        - source: salt://keys/pikachu.pub
        - user: root
        - group: root
        - file_mode: 744
        - dir_mode:700
        - makedirs: True

kernel-default:
    pkg.installed: []

nfs-client:
    pkg.installed:
        - require:
            - pkg: kernel-default
    service.running:
        - name: nfs
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

/srv/tftpboot/suse-12.1/x86_64/install:
    mount.mounted:
        - require:
            - pkg: nfs-client
        - device: 192.168.124.1:/exports/install/suse/SLES12-SP1-x86_64
        - fstype: nfs
        - mkmnt: True
        - persist: True
        - opts: vers=3

/srv/tftpboot/suse-12.2/x86_64/install:
    mount.mounted:
        - require:
            - pkg: nfs-client
        - device: 192.168.124.1:/exports/install/suse/SLES12-SP2-x86_64
        - fstype: nfs
        - mkmnt: True
        - persist: True
        - opts: vers=3

/srv/tftpboot/suse-12.2/x86_64/repos/Cloud:
    mount.mounted:
        - require:
            - pkg: nfs-client
        - device: 192.168.124.1:/exports/install/suse/SUSE-Cloud-7
        - fstype: nfs
        - mkmnt: True
        - persist: True
        - opts: vers=3

/etc/crowbar/network.json:
    file.managed:
        - source: salt://cloud7-crowbar/network.json
        - user: root
        - group: root
        - mode: 644
        - makedirs: True

/etc/ssh:
    file.recurse:
        - source: salt://cloud7-crowbar/ssh
        - include_empty: True
        - user: root
        - group: root
        - dir_mode: 644
        - file_mode: 600
        - makedirs: True

sshd:
    service.running:
        - enable: True
        - reload: True

/etc/sysconfig/ntp:
    file.managed:
        - source: salt://cloud7-crowbar/ntp
        - user: root
        - group: root
        - makedirs: True

ntp:
    pkg.installed: []
    service.running:
        - name: ntpd
        - reload: True
        - require:
            - pkg: ntp

##patterns-cloud-admin:
##    pkg.installed: []
##    service.running:
##        - name: crowbar-init
##        - require:
##            - pkg: patterns-cloud-admin
