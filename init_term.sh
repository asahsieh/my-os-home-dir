# Ref.: http://blog.ctrlxctrlv.net/mac-iterm-zsh/

## 1. Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## 2. Install iTerm
brew cask install iTerm2
brew install caskroom/cask/iterm2
brew install caskroom/versions/iterm2-legacy
brew install caskroom/versions/iterm2-nightly

## 3. Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## 4. Set zsh theme to agnoster
edit ~/.zshrc file
and set ZSH_THEME="agnoster"

## 5. Install Powerline Fonts

git clone https://github.com/powerline/fonts.git
./install.sh
cd fonts
rm -rf fonts
cd ..

## 6.Remove device name & user name
edit ~/.zshrc file and add
export DEFAULT_USER=whoami
