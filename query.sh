#!/bin/bash
# curl -fssl https://raw.githubusercontent.com/baizhi1989/testgitpod/refs/heads/main/query.sh|sh


# 检测curl是否已安装（通过dpkg查询包状态）

# rm -rf /home/user/b.qcow2

# curl -o /home/user/b.qcow2 https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-nocloud-amd64.qcow2

# qcow2镜像
wget -O /home/user/ubuntu.img https://cloud-images.ubuntu.com/focal/20250624/focal-server-cloudimg-amd64-disk-kvm.img

wget -O /home/user/ubuntu.iso https://releases.ubuntu.com/25.04/ubuntu-25.04-desktop-amd64.iso \
&& qemu-img create -f qcow2 /home/user/ubuntu.qcow2 90G \
&& qemu-system-x86_64 -cpu host,host-phys-bits -smp 16 -enable-kvm -m 20G -hda /home/user/ubuntu.img -cdrom /home/user/ubuntu.iso -usbdevice tablet 

ps|ef grep vnc

#查询本机ip

curl -4 ping0.cc 

#安装并启动tailscale

curl -fssl https://tailscale.com/install.sh|sh &&\
sudo systemctl start tailscaled &&\
sudo tailscale up


#下载

curl -o /home/user/ab.qcow2 https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-generic-amd64.qcow2


#启动7
qemu-system-x86_64 -cpu host,host-phys-bits -smp 16 -enable-kvm -m 20G -hda /home/user/ab.qcow2 -usbdevice tablet 


qemu-system-x86_64 -cpu host,host-phys-bits -smp 16 -enable-kvm -m 4G -hda /home/user/ubuntu.img -usbdevice tablet 

qemu-system-x86_64 -hda /home/user/ubuntu.img


curl -o /home/user/centos.qcow2 https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2
qemu-system-x86_64 -hda /home/user/centos.qcow2 


curl -o /home/user/debian7.qcow2 https://mirrors.tuna.tsinghua.edu.cn/debian-cd/12.11.0/amd64/iso-dvd/debian-12.11.0-amd64-DVD-1.iso &&\
rm -rf /home/user/tmp.qcow2 &&\



qemu-system-x86_64 -hda /home/user/ubuntu.img