#!/bin/sh

echo "› installing command line tools"
sudo xcodebuild -license
xcode-select --install

echo "› downloading homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "› brew update"
brew update
echo "› brew install ansible"
brew install ansible
echo "› brew install git"
brew install git

echo "› set application directory for brew cask"
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

echo "› set up ansible provisioning"
mkdir ~/.provisioning && cd $_
git clone https://github.com/KeithYokoma/dotfiles.git
ansible-playbook -i dotfiles/hosts -vv dotfiles/provisioning.yml
sudo tlmgr update --self --all

echo "›› install git prompt support"
cd
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > .git-prompt.sh
chmod +x .git-prompt.sh

echo "›› install gitconfig"
cp ~/.provisioning/dotfiles/gitconfig ~/.gitconfig

echo "›› install vimrc"
cp ~/.provisioning/dotfiles/vimrc ~/.vimrc

