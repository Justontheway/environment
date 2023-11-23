#!/bin/bash

ANSIBLE_BASE_PYTHON_VERSION=3.8.2
ANSIBLE_VIRTUAL_ENV_NAME=ansible-382
ANSIBLE_ENV_HOME=$(mktemp)

# 安装Python3.8.2
echo "Step1. install Python=$ANSIBLE_BASE_PYTHON_VERSION"
pyenv install $ANSIBLE_BASE_PYTHON_VERSION

# 安装虚拟环境
echo "Step2. create virtualenv $ANSIBLE_VIRTUAL_ENV_NAME"
pyenv virtualenv --copies $ANSIBLE_BASE_PYTHON_VERSION $ANSIBLE_VIRTUAL_ENV_NAME

# 安装ansible
echo "Step3. install ansible in $ANSIBLE_ENV_HOME"
[ -f $ANSIBLE_ENV_HOME ] && rm -f $ANSIBLE_ENV_HOME
mkdir $ANSIBLE_ENV_HOME 
cd $ANSIBLE_ENV_HOME
pyenv local $ANSIBLE_VIRTUAL_ENV_NAME
pip install --upgrade pip
pip install ansible==6.7.0
cd -

echo "install ansible==6.7.0 successfully"

