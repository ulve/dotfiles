#!/bin/bash
# erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang

# misc
sudo apt-get install git
sudo apt-get install vim

# postgres
sudo apt-get install postgresql postgresql-contrib
sudo apt-get install pgadmin3

# phoenix
sudo apt-get install inotify-tools
sudo apt-get install nodejs-legacy
sudo apt-get install elixir
mix local.hex
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
