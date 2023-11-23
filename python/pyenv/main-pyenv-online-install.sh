#!/bin/bash

cd $(dirname $0)

echo "start installing pyenv"
echo "current working directory $(pwd)"
. pyenv-env.sh
echo "Step1. 设置安装目录 export PYENV_ROOT=$PYENV_ROOT"

echo "Step2. 下载并安装"
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

echo "Step3. 设置环境变量"
if [ ! -f $NOTHING_BASHRC_HOME/pyenv-rc.sh ]; then
    cp pyenv-rc.sh $NOTHING_BASHRC_HOME/pyenv-rc.sh
    echo "execute the following commands:"
    echo "sed -i 's/VARIABLE_PYENV_ROOT/$(echo $PYENV_ROOT|sed 's/\//\\\//g')/g' $NOTHING_BASHRC_HOME/pyenv-rc.sh"
fi

echo "finish installing pyenv"

cd -


