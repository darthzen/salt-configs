base:
    '*':
        - base.vim
#        - keys

    'pine':
        - wordpress

    'cloud6-crowbar*':
        - repos.SUSE.SLE-SERVER.12-SP1.x86_64
        - repos.SUSE.OpenStack-Cloud.6.x86_64
        - repos.SUSE.SLE-Module-Adv-Systems-Management.12.x86_64
        - cloud6-crowbar

    'cloud7-crowbar*':
        - repos.SUSE.SLE-SERVER.12-SP2.x86_64
        - repos.SUSE.OpenStack-Cloud.7.x86_64
        - repos.SUSE.SLE-Module-Adv-Systems-Management.12.x86_64
        - cloud7-crowbar

    'pikachu':
        - libvirt_keys:
            - virt.keys
