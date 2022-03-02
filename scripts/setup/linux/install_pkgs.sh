sudo apt-get update

# Copy personal setting
git clone https://github.com/asahsieh/my-os-home-dir.git ~/Documents/GIT_dbs/my-os-home-dir
cp -r ~/Documents/GIT_dbs/my-os-home-dir/dotfiles/general/.[^...]* ~/

# GIT
## installation
sudo apt-get install git

# VIM
sudo apt-get install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install a Window manager and terminal multiplexer
sudo apt-get install byobu

# Install chinese input method: Chinese(Chewing)
## > https://medium.com/rick-x-coding/%E5%9C%A8-ubuntu-18-04-lts-%E7%89%88%E4%B8%8A%E5%AE%89%E8%A3%9D-%E6%96%B0%E9%85%B7%E9%9F%B3-%E6%B3%A8%E9%9F%B3%E8%BC%B8%E5%85%A5%E6%B3%95-b059672afdc4
# sudo apt-get install ibus-chewing

# Create a virtual secondary screen: VirtScreen
## > https://hackmd.io/JCdoImyGQ32r_entHMzPKw?both#VirtScreen
