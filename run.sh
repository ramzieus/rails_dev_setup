#!/bin/bash

# Update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install essential development tools
sudo apt install -y ca-certificates curl gpg gnupg build-essential git libssl-dev libreadline-dev zlib1g-dev zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Install RVM
\curl -sSL https://get.rvm.io | bash

# Load RVM scripts into the current shell session
source ~/.rvm/scripts/rvm


# Install Node.js and Yarn for JavaScript runtime
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# NODE_MAJOR=16
NODE_MAJOR=18
# NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt update
sudo apt install -y nodejs npm
sudo npm install -g yarn

# Install MySQL
sudo apt install -y mysql-server mysql-client libmysqlclient-dev
# Secure MySQL installation (set root password and other security settings)
sudo mysql_secure_installation

# Install PostgreSQL and create a PostgreSQL user
sudo apt install -y postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser -s $USER


# Install a text editor of your choice (e.g., Visual Studio Code)
sudo snap install --classic code
sudo snap install rubymine --classic

echo "Development tools for Ruby on Rails with MySQL and PostgreSQL support using RVM installed successfully."
echo "Please restart your shell or run 'source ~/.bashrc' to apply RVM changes."

