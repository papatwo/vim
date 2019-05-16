# vim

## Installation

To use the vimrc:

```sh
git clone https://github.com/papatwo/vimconfig.git && ln -srb vimconfig/.vimrc ~
```

(The original `~/.vimrc` will be backed up to e.g. `~/.vimrc~`.)

To install [Vundle](https://github.com/VundleVim/Vundle.vim):

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

To install the plugins included in Vundle:

```sh
vim +PluginInstall +qall
```
