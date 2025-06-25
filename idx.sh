#!/bin/bash
# curl -fssl https://raw.githubusercontent.com/baizhi1989/testgitpod/refs/heads/main/idx.sh|sh

echo "开始执行\
自定义脚本" \
&& echo "hahaha"
if [ -f "/home/user/b.qcow2" ]; then
    echo "文件存在"
else
    echo "文件不存在"
    curl -o /home/user/debian-12-nocloud-amd64.qcow2 https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-nocloud-amd64.qcow2
fi

if ! dpkg -s qemu-system >/dev/null 2>&1; then
  echo "qemu-system未安装，开始安装..."
  sudo apt update -y \
&& sudo apt-get install -y git \
libglib2.0-dev \
libfdt-dev \
libpixman-1-dev \
zlib1g-dev \
ninja-build \
qemu-system 
fi

# qemu-system-x86_64 /home/user/b.qcow2 -boot menu=on
exit 1


qemu-system-x86_64 -enable-kvm \
-m 4G \
-hda \
/home/user/debian-12-nocloud-amd64.qcow2 \
-nic user,hostfwd=tcp::5022-:22 \
-show-cursor \
-usbdevice tablet \
-boot menu=on


# 哈8