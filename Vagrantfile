Vagrant::Config.run do |config|
  config.vm.box = "precise_64_with_ruby_193"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  # config.vm.network :hostonly, "192.168.33.10"

  # Assign this VM to a bridged network, allowing you to connect directly to a
  # network using the host's network device. This makes the VM appear as another
  # physical device on your network.
  # config.vm.network :bridged

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
  end
end


# cdh
# cp /Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso .
# vagrant ssh
#
# mkdir vbox
# sudo mount -o loop /vagrant/VBoxGuestAdditions.iso vbox/
# sudo vbox/VBoxLinuxAdditions.run
# exit
#
# vagrant reload
# vagrant ssh
#
# sudo apt-get update -y
# sudo apt-get install build-essential zlib1g-dev libssl-dev libreadline-dev git-core curl libyaml-dev libsqlite3-dev apache2-dev -y
# sudo apt-get install libcurl4-gnutls-dev curl puppet -y
# sudo rm -rf /opt/vagrant_ruby
# curl --remote-name http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
# tar zxf ruby-1.9.3-p194.tar.gz
# cd ruby-1.9.3-p194/
# ./configure
# make
# sudo make install
# exit
#
# vagrant package
#
#
#
#
#
#
#
#
#
#
#
#
#

