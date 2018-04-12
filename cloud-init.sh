#!/bin/bash
yum install -y epel-release
yum install -y git ansible
cd /root
(
  echo "[local]"
  echo "localhost ansible_connection=local"
) > localhost.ini
git clone https://github.com/slauger/ansible-training.git
cd /root/ansible-training
ansible -i /root/localhost.ini playbooks/setup.yml
