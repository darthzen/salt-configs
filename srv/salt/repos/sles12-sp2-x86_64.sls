SLES12-SP2-12.2-0:
    pkgrepo.managed:
        - name: SLES12-SP2-12.2-0
        - baseurl: http://192.168.124.1/install/suse/SLES12-SP2-x86_64

SLES12-SP2-x86_64-Updates:
    pkgrepo.managed:
        - name: SLES12-SP2-x86_64-Updates
        - baseurl: http://192.168.124.1/repo/SUSE/Updates/SLE-SERVER/12-SP2/x86_64/update 
