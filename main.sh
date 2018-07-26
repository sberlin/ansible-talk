#Ansible talk by sberlin

#doitlive shell: /bin/zsh
#doitlive prompt: default
#doitlive speed: 3
#doitlive commentecho: true
#doitlive alias: ssh="vagrant ssh"
#doitlive alias: ansible-playbook="vagrant up --provision-with $PLAYBOOK | grep PLAY -A 99 #"

#                       _ _     _
#       /\             (_) |   | |
#      /  \   _ __  ___ _| |__ | | ___
#     / /\ \ |  _ \/ __| |  _ \| |/ _ |
#    / ____ \| | | \__ \ | |_) | |  __/
#   /_/    \_\_| |_|___/_|_.__/|_|\___|
#
#

:

#
#Ansible for admins
#

#doitlive env: PLAYBOOK=playbook_moo.yml
ansible-playbook --inventory my-nodes playbook_moo.yml
cat playbook_moo.yml
ssh machine0 -- cowsay '$HOSTNAME says Fail!'
ssh machine1 -- cowsay '$HOSTNAME says Aye, captain!'
ssh machine2 -- cowsay '$HOSTNAME says Moo!'

:

#
#Ansible for hackers
#

#doitlive env: PLAYBOOK=playbook_pwn.yml
ansible-playbook --inventory my-victims playbook_pwn.yml
cat playbook_pwn.yml
ssh machine0 -- cat /pwned.txt
ssh machine1 -- cat /pwned.txt
ssh machine2 -- cat /pwned.txt

:

#
#Ansible for developers
#

#doitlive env: PLAYBOOK=playbook_dev.yml
git clone https://github.com/sberlin/dev-env
export ANSIBLE_ROLES_PATH=./dev-env/roles
ansible-playbook --inventory localhost, --connection local playbook_dev.yml
cat playbook_dev.yml
ssh machine1 -- ls -altr
ssh machine0 -- ls -altr
ssh machine0

:

#                                                  _   _
#                                                 | | | |
#    _ __   _____      _____ _ __ ___ _ __ ___  __| | | |__  _   _
#   | '_ \ / _ \ \ /\ / / _ \ '__/ _ \ '__/ _ \/ _` | | '_ \| | | |
#   | |_) | (_) \ V  V /  __/ | |  __/ | |  __/ (_| | | |_) | |_| |
#   | .__/ \___/ \_/\_/ \___|_|  \___|_|  \___|\__,_| |_.__/ \__, |
#   | |                                                       __/ |
#   |_|                                                      |___/
#http://www.patorjk.com/software/taag/#p=display&c=bash&f=Big&t=powered%20by
#
#                tmux https://github.com/tmux/tmux
#           doitlive https://github.com/sloria/doitlive
#                vagrant https://www.vagrantup.com
#
#           dotfiles https://github.com/sberlin/dotfiles
#            dev-env https://github.com/sberlin/dev-env

