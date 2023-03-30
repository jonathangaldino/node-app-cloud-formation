#!/bin/bash

# Update the package manager
sudo yum update -y

# Install Node.js LTS
curl -sL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

# Clone the Git repository
git clone https://github.com/coderonfleek/simple-node-api.git /home/ec2-user/app

# Install dependencies and run the app
cd /home/ec2-user/app
npm install
npm start
