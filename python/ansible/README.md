## ansible
* 默认使用Python3.8.2  ansible==6.7.0
* 设置环境脚本 - ```bash main-ansible-online-install.sh```
* 设置运行脚本的主机列表 - ```inventory/hosts```

## example
* 查看本地主机名 - ```ansible localhost -m shell -a hostname```
* 查看所有主机名 - ```ansible all -i inventory/hosts -m shell -a hostname```

