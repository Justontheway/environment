## notebook
* 主要用于python相关开发

### 关键设置
* 配置文件为notebook-config.py
* 通过设置```c.NotebookApp.allow_origin = '*'```允许所有的origin访问
* 通过设置```c.NotebookApp.base_url = 'custom base url'```可以设置自定义的前缀路径，方便代理
* 通过设置```c.NotebookApp.ip = '0.0.0.0'```可以设置监听的ip地址
* 通过设置```c.NotebookApp.port = 8088```可以设置监听的端口
* 通过设置```c.NotebookApp.notebook_dir = u'custom dir'```可以设置自定义的根目录(存放notebooks和kernels)
* 通过设置```c.NotebookApp.password = u'xxx'```可以设置自己的密码(密码信息通过python passgen.py生成)

### windows使用
#### 安装配置
* 安装python
* 在D盘创建对应目录结构
    * D:\Codebase
    * D:\Codebase\scripts
    * D:\Codebase\notebooks
    * D:\Codebase\notebooks\notebook2
* 将文件py2-notebook.bat放入D:\Codebase\scripts目录下
* 鼠标右键py2-notebook.bat -> 选择发送到 -> 桌面快捷方式

#### 使用说明
* 以后使用时只需要正常打开对应的桌面快捷方式就可以
* 新建的notebook文件都放到了D:\Codebase\notebooks\notebook2目录下

