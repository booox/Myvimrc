# Myvimrc
* Keep my newest version of vimrc
* Add Vim Plugin : Bundle
* Check all the other configurations

# Prerequirement
The newest version of snipmate needs this package

    sudo apt-get install vim-addon-mw-utils

# Install 

    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ git clone https://github.com/mudongliang/Myvimrc
    $ cp Myvimrc/vimrc ~/.vimrc
    $ rm -rf Myvimrc

# Brief Help

    :PluginUpdate        - update all the plugins
    :PluginList          - list configured plugins
    :PluginInstall(!)    - install (update) plugins
    :PluginSearch(!) foo - search (or refresh cache first) for foo
    :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

# Installed Plugins

    " Code complete
    Plugin 'mudongliang/vim-snipmate' 
    " NERD tree
    Plugin 'scrooloose/nerdtree 
	" Plugin to manage Most Recently Used (MRU) files
	Plugin 'mru.vim'

