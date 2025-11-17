sudo qemu-system-x86_64 -m 512 -smp 2 -cpu host -nographic -serial mon:stdio -kernel $1 -enable-kvm -bios /usr/share/ovmf/OVMF.fd -append "console=ttyS0 root=/dev/vda rw" \
	-drive file=$2,format=raw,if=virtio
