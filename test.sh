#!/usr/bin/env bash

#make sure systctl,, wget gnupg are installed first

# echo "
#   NODE & NPM
# "

# curl https://raw.githubusercontent.com/djtoler/QuickProjectSetup/main/setup.sh | sudo bash -s "test5"

# # add nodejs 16 ppa from nodesource
# curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -

# # install nodejs 16 and npm
# sudo apt-get install -y nodejs


# echo "
#   MONGODB
# "

# # import a public key mongodb 5.0 
# wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -


# # create a /etc/apt/sources.list.d/mongodb-org-5.0.list file for mongodb
# echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# # reload local package database
# sudo apt-get update

# # install the latest version of mongodb
# sudo apt-get install -y mongodb-org

# # start mongodb
# sudo systemctl start mongod

# # set mongodb to start automatically on system startup
# sudo systemctl enable mongod


# echo "
#   PM2
# "

# # install pm2 with npm
# sudo npm install -g pm2

# # set pm2 to start automatically on system startup
# sudo pm2 startup systemd


# echo "
#   NGINX
# "

# # install nginx
# sudo apt-get install -y nginx


# echo "
# ----------------------
#   UFW (FIREWALL)
# ----------------------
# "

# # allow for ssh connections through firewall
# sudo ufw allow OpenSSH

# # allow for http & https through firewall
# sudo ufw allow 'Nginx Full'

# # enable firewall
# sudo ufw --force enable