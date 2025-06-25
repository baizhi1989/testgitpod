#!/bin/bash
# curl -fssl https://raw.githubusercontent.com/baizhi1989/testgitpod/refs/heads/main/query.sh|sh


# 检测curl是否已安装（通过dpkg查询包状态）

# rm -rf /home/user/b.qcow2

# curl -o /home/user/b.qcow2 https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-nocloud-amd64.qcow2

wget -O /home/user/ubuntu.iso https://releases.ubuntu.com/25.04/ubuntu-25.04-desktop-amd64.iso \
&& qemu-img create -f qcow2 /home/user/ubuntu.qcow2 90G \
&& qemu-system-x86_64 -cpu host,host-phys-bits -smp 4 -enable-kvm -m 5G -hda /home/user/ubuntu.qcow2 -cdrom /home/user/ubuntu.iso -usbdevice tablet 