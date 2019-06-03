#! /bin/bash

cp aws-vpc/vars/main.yml.example aws-vpc/vars/main.yml
cp web/vars/main.yml.example web/vars/main.yml
cp ssh-key/vars/main.yml.example ssh-key/vars/main.yml
cp hosts.example hosts
mkdir -p storage/private-keys

echo "Please modify the configuration in aws-vpc/vars/main.yml for aws resources deployment"
echo "Please modify the configuration in web/vars/main.yml for application deployment"

