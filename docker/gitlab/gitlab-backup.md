#/bin/bash

####################################################
# gitlab备份
# 在gitlab服务器上运行命令
# web上没有直接备份的按钮
# 命令会在/var/opt/gitlab/backups目录下创建备份的tar包
#
gitlab-rake gitlab:backup:create


####################################################
# gitlab恢复
# Step1. 需要新安装gitlab服务器
# Step2. 需要再gitlab服务器上运行命令
# Step3. 停止服务unicorn和sidekiq
#    * ```gitlab-ctl stop unicorn | gitlab-ctl stop sidekiq```
# Step4. 将之前备份的文件放到新服务的/var/opt/gitlab/backups 目录下然后恢复
#    * ```gitlab-rake gitlab:backup:restore BACKUP=1530773117_2018_07_05```
#    * BACKUP后跟的信息可以不用跟_gitlab_backup.tar
#    * 中间一般按yes就OK了
# Step5. 重新启动对应服务
#    * ```gitlab-rake start unicorn | gitlab-rake start sidekiq```或```gitlab-ctl start|restart```
#
#


