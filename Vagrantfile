Vagrant.configure("2") do |config|
  #config.vm.box = "hashicorp/precise64"
  config.vm.box = "v0rtex/xenial64"
  
   config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.name = "drwgry-vm"
  
     # Customize the amount of memory on the VM:
     vb.memory = "4096"
	 
   end

  config.vm.provision :shell, path: "LinuxDevMachineBuild.sh"
  
  config.vm.network :forwarded_port, guest: 80, host: 4567
  
end