# dotfiles

## Usage


### .vimrc

```
# Install .vimrc
curl -o ~/.vimrc https://raw.githubusercontent.com/maximumhallinan/dotfiles/master/.vimrc

# .vimrc dependencies

# Install Vundle (Vim plugin manager)
git clone https://github.com/VundleVim/Vundle.vim.git" ~/.vim/bundle/Vundle.vim

# Install Hybrid color scheme
curl -o ~/.vim/colors/hybrid.vim --create-dirs https://github.com/w0ng/vim-hybrid/blob/master/colors/hybrid.vim

# Get Hybrid iTerm colors 
curl -o iterm_colors/Hybrid.itermcolors https://gist.githubusercontent.com/luan/6362811/raw/bfdf372168a5d5b97402a70f080f150218fe5044/Hybrid.itermcolors

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
ln -s .zshrc ~/.zshrc

# Install Honukai theme
curl -o ~/.oh-my-zsh/themes/honukai.zsh-theme https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.zsh-theme
```

### .gitignore

```
ln -s ~/.gitignore ./.gitignore
git config --global core.excludesfile '~/.gitignore'
```

