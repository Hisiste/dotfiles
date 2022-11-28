# Personal Dotfiles

For this git repository, we will be following
[this page](https://www.atlassian.com/git/tutorials/dotfiles). In essence, this
is a git bare repository that runs on the home folder.

## Installing these dotfiles on your computer

```bash
git clone --bare git@github.com:Hisiste/dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

# Backup of pre-existing dotfiles
config checkout
if [ $? = 0 ]; then
    echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";

    mkdir -p .config-backup
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
    config checkout
fi;

# Final tweaks
config config status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```


## Initial commit

If you want to replicate this repository for your own dotfiles, start with the
following commands:

```bash
# Folder to store the git repository.
mkdir $HOME/.cfg
git init --bare $HOME/.cfg

# Alias `config` to use as a git command.
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no

# Add alias to your bashrc. (Or zshrc)
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Now we can start to add our dot files and make commits.

```sh
config status
config add ~/.bashrc
config commit -m "Added bashrc."
config push
```

