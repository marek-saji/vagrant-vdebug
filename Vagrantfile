Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.hostname = "vagrant-vdebug"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "192.168.13.102"
  config.vm.network :forwarded_port, guest: 9001, host: 9001
  config.vm.synced_folder ".", "/vagrant",
      owner: "www-data", group: "www-data"
  config.vm.provision :shell, :path => "VagrantBootstrap.sh"
end

# vi: set ft=ruby :
