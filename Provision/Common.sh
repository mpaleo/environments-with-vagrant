#!/usr/bin/env bash

echo "########################################"
echo "Update the box"
echo "########################################"

# Update apt cache
sudo apt-get update

echo "########################################"
echo "Git"
echo "########################################"

# Install Git
sudo apt-get install -y git
