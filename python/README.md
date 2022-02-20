## pyenv
* 通过install.sh可以安装pyenv环境
* 安装后需要根据输出设置~/.bashrc文件
  * 一般设置内容如下
```bash

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
```
