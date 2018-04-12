#!/bin/bash
# curl https://raw.githubusercontent.com/slauger/ansible-training/master/cloud-init.sh | bash

(
echo 'SYSTEM IS NOT READY - PLEASE WAIT UP TO 120 SECONDS'
echo
) > /etc/motd

yum install -y epel-release
yum install -y git ansible
cd /root
(
  echo "[local]"
  echo "localhost ansible_connection=local"
) > localhost.ini
git clone https://github.com/slauger/ansible-training.git
cd /root/ansible-training
ansible-playbook -i /root/localhost.ini playbooks/setup.yml &> /root/cloud-init.log

(
echo ' _            _       _         '
echo '| |_ __ __  _| | __ _| |__  ___ '
echo '| | |_ \\ \/ / |/ _` | |_ \/ __|'
echo '| | | | |>  <| | (_| | |_) \__ \'
echo '|_|_| |_/_/\_\_|\__,_|_.__/|___/'
echo
) > /etc/motd
