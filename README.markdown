# Dotfiles

A dotfile for every occasion.

## Usage

### rbenv

```shell
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
# `rbenv install` command is dependent on rbenv/ruby-build
git clone https://github.com/rbenv/ruby-build.git "~/.rbenv/plugins/ruby-build
# restart shell
```

### pyenv

```shell
# Install
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
# restart shell
# Set latest version and system version as global shims
pyenv install [latest]
pyenv global [latest] system
```

### Zsh

```shell
# Install Zsh via package manager of choice

# On Mac:
brew install zsh
# On Ubuntu
sudo apt-get update && sudo apt-get install -y zsh

# Verify installation
zsh --version 

# Verify that Zsh is added to /etc/shells
cat /etc/shells

# If not, add to Zsh /etc/shells
command -v zsh | sudo tee -a /etc/shells

# Set default shell to Zsh
sudo chsh -s "$(command -v zsh)" "${USER}"

# Log out of user session
# Verify that shell is /bin/zsh
echo $SHELL

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Configure Zsh
ln -s ./.zshenv ~/.zshenv
ln -s ./.zshrc ~/.zshrc

# Install pure-prompt *manually*
# Installing with npm will cause permissions errors on Linux
# https://github.com/sindresorhus/pure#manually 
# Also helpful: https://gist.github.com/marcuslilja/8100205#install-pure-theme

# Activate Zsh configuration
source ~/.zshrc
```

### Vim

```shell
# Configure Vim
ln -s ./.vimrc ~/.vimrc

# Install Vim plugins 

# Install Vundle (Vim plugin manager)
git clone https://github.com/VundleVim/Vundle.vim.git" ~/.vim/bundle/Vundle.vim

# Install Vundle-managed plugins
vim 
:PluginInstall
```

### tmux

```shell
# Configure tmux
ln -s ./tmux.conf ~/.tmux.conf

# Install tmux plugin manager
# https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Activate tmux config
tmux source ~/.tmux.conf

# Install tmux plugins
ts foo
<tmux-prefix> I
```

### npm

```shell
# Set up npm global installation directory
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
mkdir "${HOME}/.npm-global"

# Configure npm
ln -s ./.npmrc ~/.nprc
```

### Git

```shell
# Add git config
ln -s ./.gitconfig ~/.gitconfig

# Add global .gitignore
ln -s ./.gitignore ~/.gitignore
```
