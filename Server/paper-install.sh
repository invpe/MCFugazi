#!/bin/bash
clear
echo "Installing PAPER MC"
echo "1. Downloading paper"
wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/13/downloads/paper-1.21.1-13.jar
echo "2. Installing Java"
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install ca-certificates apt-transport-https gnupg wget
wget -O - https://apt.corretto.aws/corretto.key | sudo gpg --dearmor -o /usr/share/keyrings/corretto-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/corretto-keyring.gpg] https://apt.corretto.aws stable main" | sudo tee /etc/apt/sources.list.d/corretto.list
sudo apt-get update
sudo apt-get install -y java-21-amazon-corretto-jdk libxi6 libxtst6 libxrender1
echo "3. Checking for Java"
java -version
echo "4. No errors, you're done for this setup"
