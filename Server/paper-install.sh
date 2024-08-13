#!/bin/bash
clear
echo "Installing PAPER MC"
echo "0. Prerequisites"
apt-get update && apt-get upgrade -y
apt-get install screen -y
sudo useradd -m -s /bin/bash mcfugazi

echo "1. Installing Java"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y ca-certificates apt-transport-https gnupg wget
wget -O - https://apt.corretto.aws/corretto.key | sudo gpg --dearmor -o /usr/share/keyrings/corretto-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/corretto-keyring.gpg] https://apt.corretto.aws stable main" | sudo tee /etc/apt/sources.list.d/corretto.list
sudo apt-get update
sudo apt-get install -y java-21-amazon-corretto-jdk libxi6 libxtst6 libxrender1

echo "2. Checking for Java"
java -version

echo "3. Downloading paper"
cd /home/mcfugazi
sudo -u mcfugazi wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/13/downloads/paper-1.21.1-13.jar

echo "4. Initial server start"
sudo -u mcfugazi java -jar /home/mcfugazi/paper-1.21.1-13.jar

echo "5. Eula"
sudo -u mcfugazi sed -i 's/eula=false/eula=true/' /home/mcfugazi/eula.txt

echo "6. EULA updated, starting again in the foreground"
sudo -u mcfugazi java -jar /home/mcfugazi/paper-1.21.1-13.jar
