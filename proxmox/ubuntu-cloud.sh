qm create 1000 --memory 4096 --core 4 --name ubuntu-cloud --net0 virtio,bridge=vmbr0
qm importdisk 1000 jammy-server-cloudimg-amd64.img local-lvm
qm set 1000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-1000-disk-0
qm set 1000 --serial0 socket --vga serial0
qm set 1000 --boot c --bootdisk scsi0
qm set 1000 --ide2 local-lvm:cloudinit
qm set 1000 --ipconfig0 ip=dhcp
qm set 1000 --ciuser rojo --sshkey ~/.ssh/rojo_ed25519.pub
qm set 1000 --cipassword TheMamba123!
qm set 1000 --agent enabled=1
qm resize 1000 scsi0 +30G
qm template 1000
