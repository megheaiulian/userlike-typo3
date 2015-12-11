# -*- mode: ruby -*-
# vi: set ft=ruby :

def required(*plugins)
	for plugin in plugins
		unless Vagrant.has_plugin?(plugin)
			raise Vagrant::Errors::PluginNotInstalled.new :name => plugin
		end
	end
end


#Project name used for database name,user & pass
project  	= "userlike-typo3"
windows 	=	Vagrant::Util::Platform.windows?
ansible 	= windows ? 'guest_ansible' : 'ansible'

#folder
nfs 		=	[ 'rw', 'vers=3', 'tcp', 'fsc','actimeo=1']
smb 		= [ 'file_mode=0777,dir_mode=0777']
share 	= [ './', '/vagrant']
nfsf 		= share + [type: 'nfs', :mount_options =>nfs]
smbf 		= share + [type: 'smb', :mount_options =>smb ]

Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/vivid64"
	required "vagrant-hostsupdater"

	#virtualbox
	config.vm.provider :virtualbox do |vb,ovrd|
		vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
		ovrd.vm.synced_folder *(windows ? smbf : nfsf)
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
		dev.vm.network :private_network, ip: "192.168.100.110"
		dev.vm.provision "shell", path: "provision/shell/ansible.sh"
		dev.vm.provision ansible do |ansible|
			ansible.playbook = "provision/ansible/develop.yml"
			ansible.extra_vars = {project: project}
		end
	end
end
