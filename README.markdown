# dotfiles

A dotfile for every occasion.

## Usage

### .vimrc

```
# Install .vimrc
ln -s ./.vimrc ~/.vimrc

# Install Vim plugins 

# Install Vundle (Vim plugin manager)
git clone https://github.com/VundleVim/Vundle.vim.git" ~/.vim/bundle/Vundle.vim

# Install Vundle-managed plugins
vim 
:PluginInstall
```

### .zshrc
```
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

# Symlink to ~/.zshrc
ln -s ./.zshrc ~/.zshrc

# Install Pure prompt
# https://github.com/sindresorhus/pure
npm install --global pure-prompt

# Activate zsh configuration
source ~/.zshrc
```

### .gitignore

```
ln -s ~/.gitignore ./.gitignore
```
