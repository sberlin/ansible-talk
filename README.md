# Ansible talk

Ansible for admins, hackers and developers

## Requirements

* [Vagrant](https://www.vagrantup.com)
* [Ansible](https://www.ansible.com/)
* [doitlive](https://github.com/sloria/doitlive)

## Preparation

Vagrant uses an Ubuntu box to start 3 guest machines used for demo purposes.
I already had Ubuntu locally, but unfortunately Alpine does not work due to a
bug when changing the hostname.

```bash
$ vagrant up --no-provision
```

## Start

```bash
$ doitlive play main.sh
```

## Notes

### Ansible

* uses declarations instead of imperatives
* define a state your system should have
* provision single or multiple machines
* YAML all the way
* only needs Python installed
* SSH or local execution
* Ansible Galaxy as ecosystem for sharing

### Admins

* script your job and go home
* provision machines parallelly via SSH
* no need to log into machines
* write down all your implicit knowledge
* read YAML instead of tons of tutorials
* lightweight in comparison to Puppet

### Hackers

* a.k.a. next level script kiddies
* react to system facts like OS or network configurations
* reusable attacks as standalone dependencies

### Developers

* reuse local configuration for dev infrastructure
* document your infrastructure and make your admins happy
* script your environment
* switch your OS/machine with less effort
* back up your configurations descriptively

