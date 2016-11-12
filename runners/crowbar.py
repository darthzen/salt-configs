import salt.client
from subprocess import call

def install(outputter=None, display_progress=False):
    # run install-suse-cloud
    call(["/usr/sbin/install-suse-cloud"],["--verbose"])

def batch(operation="import",config,includes="",excludes=""):
    if operation == "import"
        call(["crowbar_batch"],[operation])
