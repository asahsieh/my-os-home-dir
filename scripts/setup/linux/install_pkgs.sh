sudo apt-get update

# Install essential utilites
## GIT
sudo apt-get install git

## VIM
sudo apt-get install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
### install plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Sync personal setting
git clone https://github.com/asahsieh/my-os-home-dir.git ~/Documents/GIT_dbs/my-os-home-dir
# Copy the setting to local machine
cp -r ~/Documents/GIT_dbs/my-os-home-dir/dotfiles/general/.[^...]* ~/
# Create links to replace the original setting
mv ~/.bashrc ~/.bashrc.bak
mv ~/.bash_aliases ~/.bash_aliases.bak
if [[ -e  ~/.gitconfig ]]; then
    mv ~/.gitconfig ~/.gitconfig.bak
fi
if [[ -e  ~/.vim_runtime/my_configs.vim ]]; then
    mv ~/.vim_runtime/my_configs.vim ~/.vim_runtime/my_configs.vim.bak
fi
ln -s ~/Documents/GIT_dbs/my-os-home-dir/dotfiles/ubuntu/.bashrc ~/.bashrc
ln -s ~/Documents/GIT_dbs/my-os-home-dir/dotfiles/ubuntu/.bash_aliases ~/.bash_aliases
ln -s ~/Documents/GIT_dbs/my-os-home-dir/dotfiles/general/.gitconfig ~/.gitconfig
ln -s ~/Documents/GIT_dbs/my-os-home-dir/dotfiles/general/.vim_runtime/my_configs.vim ~/.vim_runtime/my_configs.vim

# Other utilites: uncomment the commands (the line with prefix "###") if you want to install the utilites
## Install a Window manager and terminal multiplexer
### sudo apt-get install byobu

## Install chinese input method: Chinese(Chewing)
## > https://medium.com/rick-x-coding/%E5%9C%A8-ubuntu-18-04-lts-%E7%89%88%E4%B8%8A%E5%AE%89%E8%A3%9D-%E6%96%B0%E9%85%B7%E9%9F%B3-%E6%B3%A8%E9%9F%B3%E8%BC%B8%E5%85%A5%E6%B3%95-b059672afdc4
### sudo apt-get install ibus-chewing

## Create a virtual secondary screen: VirtScreen
## > https://hackmd.io/JCdoImyGQ32r_entHMzPKw?both#VirtScreen
