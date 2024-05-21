For everything to work, first run these commands:

```
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
echo ".dotfiles" >> .gitignore
source .bashrc
```

Then, clone this repository:

```
git clone --bare https://github.com/MihneaCiocioiu/Dotfiles $HOME/.dotfiles
```

Then, to install the necessary packages, run the following lines:

```
sudo chmod +x initialSetup.sh
./initialSetup.sh
```

In case of conflicts, run this for a config backup folder:
```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
