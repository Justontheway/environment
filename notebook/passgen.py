#-*- coding:utf-8 -*-

# 运行, 然后输人密码, 将输出修改notebook_config.py的c.NotebookApp.password = 
from notebook.auth import passwd
print(passwd())
