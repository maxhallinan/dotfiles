# dotfiles

A dotfile for every occasion.

## Usage

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

### Zsh

```shell
# Install Zsh via package manager of choice

# On Mac:
brew install zsh

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

# Install pure-prompt
# https://github.com/sindresorhus/pure
npm install --global pure-prompt

# Activate Zsh configuration
source ~/.zshrc
```

### Git

```shell
# Add git config
ln -s ./.gitconfig ~/.gitconfig

# Add global .gitignore
ln -s ./.gitignore ~/.gitignore
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
```


### npm

```shell
# Set up npm global installation directory
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
mkdir "${HOME}/.npm-packages"

# Configure npm
ln -s ./.npmrc ~/.nprc
```
