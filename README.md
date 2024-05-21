For everything to work, first run these commands:

```
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
echo ".dotfiles" >> .gitignore
source .bashrc
```

Then, clone this repository and define the alias config:

```
git clone --bare https://github.com/MihneaCiocioiu/Dotfiles $HOME/.dotfiles
```

In case of conflicts, run this for a config backup folder:
```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
