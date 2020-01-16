#!/bin/sh
https://repo.continuum.io/
# Python tutorials
# http://the-hitchhikers-guide-to-packaging.readthedocs.io/en/latest/quickstart.html
# http://python-textbok.readthedocs.io/en/1.0/Packaging_and_Testing.html
# http://python-packaging.readthedocs.io/en/latest/dependencies.html
# http://python-3-patterns-idioms-test.readthedocs.io/en/latest/Observer.html

#############################################
#########  Packaging  #######################
https://stackoverflow.com/questions/1395593/managing-resources-in-a-python-project
https://jeffknupp.com/blog/2013/08/16/open-sourcing-a-python-project-the-right-way/


##############################################
# Thread save, multi processing, GIL & more ##
https://stackoverflow.com/questions/31079717/synchronous-v-s-asynchronous
https://dbader.org/blog/understanding-asynchronous-programming-in-python
http://www.gevent.org/
http://sdiehl.github.io/gevent-tutorial/
Google search "gil python 3 youtube"
Look for AsyncIO
http://www.bogotobogo.com/python/Multithread/python_multithreading_creating_threads.php

##############################################
########  Python Network Programming
http://www.bogotobogo.com/python/python_network_programming_tcp_server_client_chat_server_chat_client_select.php


##############################################
##### Python web services
http://www.bogotobogo.com/python/python_http_web_services.php

##############################################
######## PyMongo
http://www.bogotobogo.com/python/MongoDB_PyMongo/python_MongoDB_pyMongo_tutorial_installing.php

##############################################
####### Websockets
http://codingnights.com/coding-fully-tested-python-chat-server-using-sockets-part-1/


* Event-driven programming 
* 

#############################################
#####   Build and Install Python from SRC code
#############################################

# https://realpython.com/installing-python/#ubuntu
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev  libncursesw5-dev xz-utils tk-dev
sudo apt-get install -y checkinstall
sudo apt-get install -y libreadline-gplv2-dev
sudo apt-get install -y libgdbm-dev
sudo apt-get install -y libc6-dev
sudo apt-get install -y openssl
sudo apt-get install -y libffi-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y python3-setuptools

sudo apt-get install -y build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev \
zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev \
libncursesw5-dev libffi-dev uuid-dev

tar xvf Python-3.6.5.tgz
cd Python-3.6.5

./configure --enable-optimizations --with-ensurepip=install

make -j 8

sudo make altinstall

###############################################################
###   Build and Install Python from SRC code - method two  ####
###############################################################

sudo apt-get update \
  && sudo apt-get install -y build-essential git libexpat1-dev libssl-dev zlib1g-dev \
  libncurses5-dev libbz2-dev liblzma-dev \
  libsqlite3-dev libffi-dev tcl-dev linux-headers-generic libgdbm-dev \
  libreadline-dev tk tk-dev

  git clone https://github.com/python/cpython.git
  cd cpython && ./configure --prefix=/usr \
  --enable-loadable-sqlite-extensions \
  --enable-shared \
  --with-lto \
  --enable-optimizations \
  --with-system-expat \
  --with-system-ffi \
  --enable-ipv6 --with-threads --with-pydebug --disable-rpath \
  && make \
  && sudo make altinstall
