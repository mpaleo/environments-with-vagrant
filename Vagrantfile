require 'yaml'

Vagrant.configure("2") do |config|
    # Load specs
    specs = YAML::load(File.open('Specs.yml'))

    # VM
    config.vm.define specs["vm_name"] do |server|
        # Box
        server.vm.box = specs["box"]

        # Network
        server.vm.network :private_network, ip: specs["ip"]
    end

    # Provider settings
    config.vm.provider :virtualbox do |v|
		v.name = specs["vm_name"]
		v.memory = specs["memory"]
		v.cpus = specs["cpus"]
	end

    # Provision
    config.vm.provision :shell, :path => "Provision/Common.sh"
    config.vm.provision :shell, :path => "Provision/Php.sh"
end
