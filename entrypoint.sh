#!/bin/sh

#install environment
apt install git -y

# 切换到安装目录，没有此目录请执行 mkdir /opt/
cd /opt/
# 下载运行环境
curl -L https://registry.npmmirror.com/-/binary/node/v12.16.1/node-v12.16.1-linux-x64.tar.gz -o /opt/node-v12.16.1-linux-x64.tar.gz
# 解压文件
tar -zxvf node-v12.16.1-linux-x64.tar.gz
# 链接程序到环境变量中
ln -s /opt/node-v12.16.1-linux-x64/bin/node /usr/bin/node
ln -s /opt/node-v12.16.1-linux-x64/bin/npm /usr/bin/npm


#install MCSM MCSM_v8.7.0
    git clone -b v8.7.0 https://github.com/suwings/mcsmanager.gi
    cd mcsmanager/
    npm install

#run MCSM MCSM_v8.7.0
    npm start
