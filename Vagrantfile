# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider :libvirt do |libvirt|
    libvirt.driver = "kvm"
    libvirt.storage :file, :size => '16G', :type => 'qcow2'
    # VM resources
    libvirt.memory = 2048
    libvirt.cpus = 1 
    # Use VirtIO for better performance
    libvirt.nic_model_type = "virtio"
    libvirt.disk_bus = "virtio"
  end

  config.vm.define "ubuntu" do |ansicon|
    ansicon.vm.box = "generic/ubuntu2004" 
    ansicon.vm.hostname = "ansicon"
    ansicon.vm.network "private_network", ip: "192.168.100.10"

    ansicon.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y ansible 
    SHELL
  end

  config.vm.define "ubuntu" do |app1|
    app1.vm.box = "generic/ubuntu2004" 
    app1.vm.hostname = "go-app1"
    app1.vm.network "private_network", ip: "192.168.100.11"
  end

  config.vm.define "ubuntu" do |app2|
    app2.vm.box = "generic/ubuntu2004" 
    app2.vm.hostname = "go-app2"
    app2.vm.network "private_network", ip: "192.168.100.12"
  end
    # Optional: Sync a folder from host to guest
    # ubuntu.vm.synced_folder ".", "/vagrant", type: "rsync"

    # Optional: Provision with shell script
    # ubuntu.vm.provision "shell", inline: <<-SHELL
    #   apt-get update
    #   apt-get install -y nginx
    # SHELL
end
