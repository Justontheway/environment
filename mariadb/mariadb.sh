#!/bin/bash

install() {
    yum install -y mariadb \
        mariadb-server
}

case $1 in
    install) install;;
    *) service mariadb $1;;
esac

