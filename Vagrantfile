$script = <<-SCRIPT
comm -13 <(sort -u /home/vagrant/.bashrc) <(sort -u .bashrc) && \
    cat /vagrant/.bashrc >> /home/vagrant/.bashrc
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "jasonc/centos7"
  config.vm.hostname = "shell-scripting"
  config.vm.provider :virtualbox do |vb|
      vb.name = "shell-scripting"
  end

  config.vm.provision "shell", inline: $script
end
