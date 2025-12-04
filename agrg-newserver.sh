#!/bin/bash

echo "Hello, "$USER".  This script will install bootstrap package for ansible in new server."
echo -n "Enter server ip address and press [ENTER]: " 10.111.2.188
read name
echo -n "Enter ssh user name [sysadm1n] press [ENTER]: " sysadm1n
read user
user=sysadm1n
ansible-playbook -b new.yml -k -K -u $user -e ansible_become_method=su --extra-vars "target=$name user=$user"
