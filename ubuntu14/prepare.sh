#!/usr/bin/env bash
echo "deb http://mirrors.ustc.edu.cn/ubuntu trusty main universe restricted multiverse       
deb http://mirrors.ustc.edu.cn/ubuntu trusty-security main universe restricted multiverse
deb http://mirrors.ustc.edu.cn/ubuntu trusty-updates main universe restricted multiverse
deb http://mirrors.ustc.edu.cn/ubuntu trusty-backports main universe restricted multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu trusty main universe restricted multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu trusty-security main universe restricted multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu trusty-updates main universe restricted multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu trusty-backports main universe restricted multiverse" > /tmp/sources.list
cp /tmp/sources.list /etc/apt/sources.list
apt-get update
apt-get install -y curl nodejs
#su vagrant
#\curl -sSL https://get.rvm.io | bash -s stable
#source ~/.bash_profile
#rvm install 2.1
#gem sources --remove https://rubygems.org/
#gem sources -a https://ruby.taobao.org/
#gem install rails --no-ri --no-rdoc
#sed -i 's/https:\/\/rubygems.org/http:\/\/ruby.taobao.org/g' `grep -rl rubygems Gemfile`
sudo -u vagrant ln -s /vagrant/src /home/vagrant/src
