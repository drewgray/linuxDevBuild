Vagrant.configure("2") do |config|
  config.vm.box = "marcoaltieri/ubuntu-desktop-16.04-64bit"
  
   config.vm.provider "virtualbox" do |vb|
   
     # Display the VirtualBox GUI when booting the machine
	 vb.gui = true;
	 
     vb.name = "drwgry-vm"
  
     # Customize the amount of memory on the VM:
     vb.memory = "4096"
	 
	 #disable usb 2.0
	 vb.customize ["modifyvm", :id, "--usb", "on"]
     vb.customize ["modifyvm", :id, "--usbehci", "off"]
	 
   end

  config.vm.provision :shell, path: "LinuxDevMachineBuild.sh"
  
  config.vm.network :forwarded_port, guest: 80, host: 4567
  
end