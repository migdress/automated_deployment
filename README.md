This is an Ansible project for deploying a small web application to the cloud
=========

The project structure is composed by 3 roles: 

* **aws-vpc**: whose responsibility is to create the necessary aws infraestructute to
  support the application deployment, among the tasks are the ones listed below
  * VPC creation
  * Subnet creation
  * Internet gateway creation
  * Routing rule creation
  * Ec2 keypair creation
  * Ec2 instance creation

* **web**: whose responsibility is to deploy and setup the application, among
  the performed tasks are the ones listed below
  * Install necessary apt packages
  * Clone the application repository
  * Setup application environment
  * Run the applicatiom

* **ssh-key**: whose responsibility is to download a public key file and add it
  to the `authorized_keys` so that ormuco staff can access the instance

The entry point for the playbook is the file **site.yml**


Installation
------------------


Author Information
------------------

migdress@hotmail.com
https://linkedin.com/in/migdress
