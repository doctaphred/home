if [ -d '/Applications/VMware Fusion.app/Contents/Library/' ]; then
    export PATH=$PATH:'/Applications/VMware Fusion.app/Contents/Library/'
fi

# list running VMs: `vmrun list`
# get VM IP: vmrun getGuestIPAddress $PATH_TO_VM
