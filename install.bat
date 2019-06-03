echo off
copy "aws-vpc\vars\main.yml.example" "aws-vpc\vars\main.yml"
copy "web\vars\main.yml.example" "web\vars\main.yml"
copy "ssh-key\vars\main.yml.example" "ssh-key\vars\main.yml"
copy hosts.example hosts
mkdir "storage/private-keys"
echo Please modify the configuration in web\vars\main.yml for application deployment
echo Please modify the configuration in aws-vpc\vars\main.yml for aws resources deployment
