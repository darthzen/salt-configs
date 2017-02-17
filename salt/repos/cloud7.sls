SUSE-OpenStack-Cloud-7:
    pkgrepo.managed:
        - name: SUSE-OpenStack-Cloud-7
        - baseurl: http://192.168.124.1/install/suse/SUSE-Cloud-7

SUSE-OpenStack-Cloud-7-Pool:
    pkgrepo.managed:
        - name: SUSE-OpenStack-Cloud-7-Pool
        - baseurl: http://192.168.124.1/repo/SUSE/Products/OpenStack-Cloud/7/x86_64/product

SUSE-OpenStack-Cloud-7-Updates:
    pkgrepo.managed:
        - name: SUSE-OpenStack-Cloud-7-Updates
        - baseurl: http://192.168.124.1/repo/SUSE/Updates/OpenStack-Cloud/7/x86_64/update

SUSE-OpenStack-Cloud-7-Magnum:
    pkgrepo.managed:
        - name: SUSE-OpenStack-Cloud-7-Magnum
        - baseurl: http://192.168.124.1/install/suse/SUSE-Cloud-7-Magnum

SUSE-OpenStack-Cloud-7-Magnum-Pool:
    pkgrepo.managed:
        - name: SUSE-OpenStack-Cloud-7-Magnum-Pool
        - baseurl: http://192.168.124.1/repo/SUSE/Products/OpenStack-Cloud-Magnum-Orchestration/7/x86_64/product

SUSE-OpenStack-Cloud-7-Magnum-Updates:
    pkgrepo.managed:
        - name: SUSE-OpenStack-Cloud-7-Magnum-Updates
        - baseurl: http://192.168.124.1/repo/SUSE/Updates/OpenStack-Cloud-Magnum-Orchestration/7/x86_64/update
