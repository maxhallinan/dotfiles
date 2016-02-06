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

# Install Vundle-managed plugins
vim 
:PluginInstall
```

