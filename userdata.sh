#!/bin/bash

# Update the package manager
sudo yum update -y

# Install Git
sudo yum install -y nodejs

# Install Node.js LTS
curl -sL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

# Install PM2
npm i -g pm2

# Clone the Git repository
git clone https://github.com/coderonfleek/simple-node-api.git /home/ec2-user/app

# Install dependencies
cd /home/ec2-user/app
npm install

# Run the app
pm2 start server.js

