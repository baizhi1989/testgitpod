#!/bin/bash
# curl -fssl https://raw.githubusercontent.com/baizhi1989/testgitpod/refs/heads/main/query.sh|sh


# 检测curl是否已安装（通过dpkg查询包状态）
if ! dpkg -s curl >/dev/null 2>&1; then echo "curl未安装，开始安装..."
# 更新包索引并安装curl（-y自动确认）
  sudo apt update && sudo apt install -y curl
fi


# 检查安装是否成功
if [ $? -eq 0 ]; then
  echo "curl安装成功！"
else
  echo "curl安装失败，请检查网络或权限。"
fi

