#!/bin/bash
if ! command -v ansible >/dev/null; then
	sudo apt-get update -qq
	sudo apt-get install -y -qq git python python-dev
	wget http://peak.telecommunity.com/dist/ez_setup.py
	sudo python ez_setup.py && rm -f ez_setup.py
	sudo easy_install pip
	sudo pip install setuptools --no-use-wheel --upgrade
	sudo pip install paramiko pyyaml jinja2 markupsafe
	sudo pip install ansible
fi
ansible-galaxy install -r /vagrant/provision/ansible/galaxy.yml -p /vagrant/provision/ansible/roles --force
