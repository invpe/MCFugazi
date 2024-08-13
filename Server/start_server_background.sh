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

# Run the Minecraft server in a screen session
echo "Starting Minecraft server in a screen session..."
screen -S minecraft_server -dm bash -c 'java -jar paper-1.21.1-13.jar'

echo "Minecraft server started in a detached screen session named 'minecraft_server'."
echo "You can reattach to this session using: screen -r minecraft_server"

