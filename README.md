This is an Ansible project for deploying a small web application to the cloud
=========

The project structure is composed by 3 roles: 

* **aws-vpc**: whose responsibility is to create the necessary aws infraestructute to
  support the application deployment, among the performed tasks are the ones listed below
  * VPC creation
  * Subnet creation
  * Internet gateway creation
  * Routing rule creation
  * Ec2 keypair creation
  * Ec2 instance creation

* **web**: whose responsibility is to deploy and set up the application, among
  the performed tasks are the ones listed below
  * Install necessary apt packages
  * Clone the application repository
  * Set up application environment
  * Run the applicatiom

* **ssh-key**: whose responsibility is to download a public key file and add it
  to the `authorized_keys` so that ormuco staff can access the instance

The entry point for the playbook is the file **site.yml**


Installation
------------------

* `git clone https://github.com/migdress/ormuco_test.git`
* `cd ormuco-test`
* On Linux, give execution permissions to `install.sh` with `chmod +x install.sh` and run it from a terminal
* On Windows, run `install.bat` from a command prompt
* Modify configuration files `aws-vpc/vars/main.yml` and `web/vars/main.yml`


Usage
------------------
* Once configuration is ready, for the first run make sure the `hosts` file
  does not contain any host, so that the playbook will populate it during
  execution

* Run with `ansible-playbook -i hosts site.yml`
  
* If you want to specify an ec2 host, you need to add the line in `hosts` and
  place the private key file at `storage/private-keys`, also make sure the
  configuration at `aws-vpc/vars/main.yml` match the key name


Author Information
------------------

* email: migdress@hotmail.com
* linkedIn: https://linkedin.com/in/migdress
