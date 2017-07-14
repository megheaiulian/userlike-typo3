# -*- mode: ruby -*-
# vi: set ft=ruby :

def required(*plugins)
	if Vagrant.in_installer?
		for plugin in plugins
			unless Vagrant.has_plugin?(plugin)
				raise Vagrant::Errors::PluginNotInstalled.new :name => plugin
			end
		end
	end
end

#Project name used for database name,user & pass
project  	= "userlike-typo3"
windows 	=	Vagrant::Util::Platform.windows?

#folder
nfs 		=	[ 'rw', 'vers=3', 'tcp', 'fsc','actimeo=1']
smb 		= [ 'file_mode=0777,dir_mode=0777']
share 	= [ './', '/vagrant']
nfsf 		= share + [type: 'nfs', :mount_options =>nfs]
smbf 		= share + [type: 'smb', :mount_options =>smb ]

#Ansible
ansibl = windows ? :ansible_local : :ansible

Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/trusty64"
	required "vagrant-hostsupdater"

	#LXC - Linux only
	config.vm.provider :lxc do |lxc,ovrd|
		ovrd.vm.box = 'aravind/xenial-lxc-amd64'
		lxc.backingstore = 'dir'
		lxc.customize 'cgroup.memory.limit_in_bytes', '512M'
		lxc.customize 'aa_allow_incomplete', 1
		lxc.container_name = project
		ovrd.vm.synced_folder *share
	end

	#virtualbox
	config.vm.provider :virtualbox do |vb,ovrd|
		vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
		ovrd.vm.synced_folder *(windows ? share : nfsf)
		vb.memory = 1024
	end

	#hyperv
	config.vm.provider "hyperv" do |hv,ovrd|
		hv.vmname = project
		ovrd.vm.synced_folder(*smbf)
	end

	#Multimachine: the develop machine
	config.vm.define :develop, primary: true do |dev|
		dev.vm.provider :virtualbox
		dev.vm.hostname = "#{project}.local"
		dev.vm.network :private_network, ip: "192.168.100.222", lxc__bridge_name: 'vlxcbr1'
		dev.vm.provision ansibl	 do |ansible|
			ansible.playbook = 'provision/ansible/develop.yml'
			ansible.galaxy_role_file = 'provision/ansible/galaxy.yml'
			ansible.extra_vars = { project: project}
		end
	end
end
