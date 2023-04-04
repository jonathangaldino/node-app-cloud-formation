#!/bin/bash

# Update the package manager
sudo yum update -y

# Install Git
sudo yum install -y git

# Install Node.js LTS
sudo yum install -y nodejs

# Install PM2
npm i -g pm2

# Clone the Git repository
git clone https://github.com/jonathangaldino/simple-node-api /home/ec2-user/app

# Install dependencies
cd /home/ec2-user/app
npm install

# Run the app
sudo pm2 start server.js

