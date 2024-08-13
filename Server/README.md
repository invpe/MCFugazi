![image](https://github.com/user-attachments/assets/b91f4cc3-c11f-4f5e-aa60-7f954c3e5773)

# MineCraft Paper 1.21.1 SERVER

<details>
<summary>English</summary>
  Setting up Your own MineCraf server is not that hard, it requires zero knowledge and with this tutorial you can do it - so just follow it easily.

  Prerequisite:
  
  You need to have a dedicated hardware (computer) to run it, in most cases a simple `Raspberry PI` will be enough, but you can also get a dedicated
  VPS `Virtual Private Server` which you will access remotely. It is up to you, this tutorial doesn't cover which one to choose, but in this tutorial
  i will be hosting the server on a VPS that i got from `ovh.com`. You can also host it on a Raspberry PI as mentioned earlier, to allow others to play on it
  you will have to update your port forwarding properly. We will cover this in the next tutorial.

  Once you have a host on which you want to run the server, follow these steps below to get up and running - with the default settings.
  We will cover changes in future revisions and updates to this repo.

  1. Login to your host as `root`
  2. Create a new user which will run the server `adduser mcfugazi`
  3. Run `apt-get update && apt-get upgrade -y`
  4. Run `apt-get install screen -y`
  5. Change directory to `cd /home/mcfugazi`
  6. Download the installer: `wget https://github.com/invpe/MCFugazi/blob/main/Server/paper-install.sh`
  7. Set +X mode `chmod +x paper-install.sh`
  8. Run the installer `./paper-install.sh`
  9. After it completes, run `java --version` to see if java is installed.

  Next we have to change to the newly created user so follow:

  1. Switch to the user created in my case it is: `su mcfugazi`
  2. Your prompt will change to `mcfugazi@....:~$` that's good
  3. Download the initial starter script: `wget https://github.com/invpe/MCFugazi/blob/main/Server/start_server.sh`
  4. Enable +x `chmod +x start_server.sh`
  5. Run it `./start_server.sh`
  6. You will get EULA requirement to comply with, type `nano eula.txt`
  7. Using arrows, go down and replace `eula=false` to `eula=true` as below:

```
#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
#Tue Aug 13 14:22:52 CEST 2024
eula=true
```
  8. Hit `CTRL+X`
  9. Confirm with `Y`
  10. Confirm filename with `enter`
  11. You will return to the shell again
  12. Start the server once more `./start_server.sh`
  13. The server will initialize stuff, once that is done, your server is UP and running :)

Optionally, if you want to keep your server up and running after you logoff from the server, follow these points:

  1. Type `stop` in the minecraft server console, it will quit
  2. Download `wget https://github.com/invpe/MCFugazi/blob/main/Server/start_server_background.sh`
  3. Run `chmod +x start_server_background.sh`
  4. Execute `./start_server_background.sh` your server is now running in the background
```
mcfugazi@mcserver:~$ ./start_server_background.sh 
'screen' is already installed.
Starting Minecraft server in a screen session...
Minecraft server started in a detached screen session named 'minecraft_server'.
You can reattach to this session using: screen -r minecraft_server
```

  5. You can return to the MC server console with a simple `screen -r minecraft_server`

Important: The server runs in default settings, be advised that it is ok to play but might be risky if not secured properly!
</details>


<details>
<summary>Polski</summary>
</details>


