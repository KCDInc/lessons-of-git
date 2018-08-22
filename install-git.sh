#!/bin/bash
# https://habr.com/post/47163/
# https://proglib.io/p/git-for-half-an-hour/
# https://githowto.com/ru
: << COMMENTBLOCK
echo "Эта строка не будет выведена."
Эта строка комментария не начинается с символа "#".
Это еще одна строка комментария, которая начинается не с символа "#".
&*@!!++=
Эта строка не вызовет ошибки,
поскольку Bash проигнорирует ее.
COMMENTBLOCK
echo "Код завершения "COMMENTBLOCK" = $?." # 0
# Показывает, что ошибок не возникало.

# install dependence on ubuntu
apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \
  libz-dev libssl-dev
# binary package on
apt-get install git

# install dependence (curl, zlib, openssl, expat) on centos
yum install curl-devel expat-devel gettext-devel \
  openssl-devel zlib-devel
# binary package on centos
yum install git-core

# download source git
http://git-scm.com/download

# build and compil from source
tar -zxf git-1.7.2.2.tar.gz
cd git-1.7.2.2
make prefix=/usr/local all
sudo make prefix=/usr/local install

# update git
git clone git://git.kernel.org/pub/scm/git/git.git