#!/bin/bash
echo 'Enter Name :'
read name
echo 'Enter Email :'
read email

git config --global user.name name
git config --global user.email email
ssh-keygen -t rsa -b 4096 -C email

echo 'Copy following key and add it to git -> settings -> ssh -> add'
cat ~/.ssh/id_rsa.pub
