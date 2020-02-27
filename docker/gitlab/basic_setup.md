## 基本设置
Step1. 安装Vmware
Step2. 安装Centos7.3
Step3. 设置网络
    * /etc/sysconfig/network-scripts/if-ens33|4|5 的参数 onboot=yes
    * /etc/rc.local -> ifconfig ens34 down;sleep 5s;ifconfig ens34 192.168.110.110 up;
    * chmod +x /etc/rc.local
Step4. 安装基本工具
    * ```yum -y install net-tools vim git```
Step5. 安装docker
    * 设置YUM源``` yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo```
    * 安装```yum install docker-ce```
    * 管理```service docker status|start|stop|restart```

## 问题
1. docker启动gitlab时volume映射到软连接的目录一直有问题，都是失败,实际目录则正常
2. docker启动gitlab时volume映射涉及到同windows共享的目录也失败
3. 貌似docker启动gitlab时volume映射只能映射正常磁盘


