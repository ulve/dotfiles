#!/bin/bash
# erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
rm erlang-solutions_1.0_all.deblang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang

# misc
sudo apt-get install git

# postgres
sudo apt-get install postgresql postgresql-contrib
sudo apt-get install pgadmin3

# phoenix
sudo apt-get install inotify-tools
## as with everything with node special hoops have to be jumped
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install elixir
mix local.hex
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Editors
https://github.com/atom/atom/releases/download/v1.7.4/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
rm atom-amd64.deb
sudo apt-get install vim

# Byobu
sudo apt-get install byobu
