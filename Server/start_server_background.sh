#!/bin/bash

# Check if 'screen' is installed
if ! command -v screen &> /dev/null
then
    echo "'screen' is not installed. Installing now..."
    sudo apt-get update
    sudo apt-get install -y screen
else
    echo "'screen' is already installed."
fi

# Define the user and the path to the Minecraft server
MC_USER="mcfugazi"
MC_DIR="/home/$MC_USER"
MC_JAR="paper-1.21.1-13.jar"

# Run the Minecraft server in a screen session as the mcfugazi user
echo "Starting Minecraft server in a screen session as $MC_USER..."
sudo -u $MC_USER screen -S minecraft_server -dm bash -c "cd $MC_DIR && java -jar $MC_JAR"

echo "Minecraft server started in a detached screen session named 'minecraft_server'."
echo "You can reattach to this session using: screen -r minecraft_server"
