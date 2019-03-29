#!/bin/bash

install() {

    yum -y install python-pip vim
    pip install shadowsocks
    firewall-cmd --permanent --add-port=10086/tcp --zone=public
    firewall-cmd --permanent --add-port=10088/tcp --zone=public
    firewall-cmd --permanent --add-port=10088/tcp --zone=public
    firewall-cmd --reload

echo '{
    "server":"0.0.0.0",
    "port_password":{
        "10086":"xxx",
        "10088":"xxx",
        "10089":"xxx"
    },
    "timeout":300,
    "method":"aes-256-cfb"
}' > /etc/shadowsocks.json

}

start() {
    nohup ssserver -c /etc/shadowsocks.json &
}

usage() {
    echo -ne "\033[031m"
    echo "bash $0 start | install"
    echo -ne "\033[0m"
}

case $1 in
    install|start) $1;;
    *) usage;;
esac

