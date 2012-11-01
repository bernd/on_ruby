APP_NAME = "orb"

Vagrant::Config.run do |config|
  config.vm.box = "precise_64_with_ruby193"
  config.vm.customize ["modifyvm", :id, "--name", APP_NAME, "--memory", "512"]

  config.vm.host_name = APP_NAME
  config.vm.network :hostonly, "33.33.13.37"

  config.vm.forward_port 22, 2222, auto: true
  config.vm.forward_port 80, 8080


  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
  end
end

##########################################################
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
# curl --remote-name http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p286.tar.gz
# tar zxf ruby-1.9.3-p286.tar.gz
# cd ruby-1.9.3-p286/
# ./configure
# make
# sudo make install
# exit
# # fixing facter fqdn > vi /etc/hosts
# # 127.0.0.1   localhost
# # 127.0.1.1   box.example.com box
#
# vagrant package
#
#