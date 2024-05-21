sudo ln -s ~/.touchpadConf /etc/X11/xorg.conf.d/90-touchpad.conf
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
xargs -a initialRequirements.txt -l1 sudo apt install -y
