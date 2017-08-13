#!/bin/bash
# erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
rm erlang-solutions_1.0_all.deblang-solutions_1.0_all.deb
sudo apt update
sudo apt install esl-erlang

# misc
sudo apt install git
sudo apt install zsh
chsh -s $(which zsh)
sudo apt install curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# postgres
#sudo apt-get install postgresql postgresql-contrib
#sudo apt-get install pgadmin3

# phoenix
sudo apt install inotify-tools
## as with everything with node special hoops have to be jumped
curl --silent https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
VERSION=node_8.x
DISTRO=xenial
echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list
sudo apt update
sudo apt upgrade
sudo apt install elixir
mix local.hex
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Editors
sudo apt install vim
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

# Elm
sudo npm install -g elm
