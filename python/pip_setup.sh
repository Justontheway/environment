#!/bin/bash

pip_setup() {
    mkdir ~/.pip
    cat >> ~/.pip/pip.conf << PIPCONF
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host = mirrors.aliyun.com

#https://pypi.mirrors.ustc.edu.cn/simple/
#http://pypi.douban.com/simple/
#https://pypi.tuna.tsinghua.edu.cn/simple/
#ttp://pypi.mirrors.ustc.edu.cn/simple/
PIPCONF
}

[ -f ~/.pip/pip.conf ] && echo -ne "\033[31m~/.pip/pip.conf exists !!!\n\033[0m" || pip_setup


