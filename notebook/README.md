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

## windows使用
### 通过py2-notebook.bat或py3-notebook.bat
#### 安装配置
* Step1.安装python
* Step2.在D盘创建对应目录结构
    * D:\Codebase
    * D:\Codebase\scripts
    * D:\Codebase\notebooks
    * D:\Codebase\notebooks\notebook2
* 将文件py2-notebook.bat放入D:\Codebase\scripts目录下
* 鼠标右键py2-notebook.bat -> 选择发送到 -> 桌面快捷方式

#### 使用说明
* 以后使用时只需要正常打开对应的桌面快捷方式就可以
* 新建的notebook文件都放到了D:\Codebase\notebooks\notebook2目录下

### 通过jupyter-notebook.ps1
#### 安装配置
* Step1.安装python
* Step2.创建对应目录并根据实际情况修改```notebook-cofig.py```的配置项```c.NotebookApp.notebook_dir```

#### 使用说明
* 使用时只需要双击jupyter-notebook.ps就可以
* 新建的notebook文件都放到了上述Step2设置的目录下

## 常见问题
### 通过jupyter-notebook.ps1脚本启动失败
* 详情：双击后闪退
* 解决方法：
    1. 检查配置notebook-cofig.py是否有问题，尤其是
        * ```c.NotebookApp.notebook_dir```的路径是否存在
        * ```c.NotebookApp.port```的端口是否被占用
    2. 本地运行```powershell```并执行命令```Get-ExecutionPolicy```查看结果是否为```RemoteSigned```，如果不是则**管理员**身份运行```powershell```并执行命令```Set-ExecutionPolicy -ExecutionPolicy RemoteSigned```然后输入```Y```并**回车**即可
