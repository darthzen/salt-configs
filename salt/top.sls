base:
    '*':
        - base.vim

    'pine':
        - wordpress

    'cloud6-crowbar*':
        - repos.sles12-sp1-x86_64
        - repos.cloud6
        - sle-mod-adv-sys-mgmt
        - cloud6-crowbar

    'cloud7-crowbar*':
        - repos.sles12-sp2-x86_64
        - repos.cloud7
        - repos.sle-mod-adv-sys-mgmt
        - cloud7-crowbar

    'pikachu.ash4d.com':
        - libvirt
