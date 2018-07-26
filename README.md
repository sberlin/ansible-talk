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

