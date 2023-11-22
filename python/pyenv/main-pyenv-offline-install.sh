#!/bin/bash

cd $(dirname $0)

echo "start installing pyenv"
echo "current working directory $(pwd)"
echo "Step1. 设置安装目录 export PYENV_ROOT=$PYENV_ROOT"
. pyenv-env.sh

echo "Step2. 安装"
if [ ! -f pyenv-package.tar.gz ]; then
    echo "package pyenv-package.tar.gz not exists, please setup first"
    echo "you can run bash download-pyenv-package.sh to download"
    echo "    also you can use script https://github.com/pyenv/pyenv-installer/blob/master/bin/download-pyenv-package.sh"
    exit -1
else
    bash pyenv-offline-installer
fi

echo "Step3. 设置环境变量"
if [ ! -f $NOTHING_BASHRC_HOME/pyenv-rc.sh ]; then
    cp pyenv-rc.sh $NOTHING_BASHRC_HOME/pyenv-rc.sh
    echo "execute the following commands:"
    echo "sed -i 's/VARIABLE_PYENV_ROOT/$(echo $PYENV_ROOT|sed 's/\//\\\//g')/g' $NOTHING_BASHRC_HOME/pyenv-rc.sh"
fi

echo "finish installing pyenv"

cd -


