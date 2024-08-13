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
  2. Download the installation script `wget https://github.com/invpe/MCFugazi/blob/main/Server/paper-install.sh`
  3. Execute `chmod +x paper-install.sh`
  4. Run `./paper-install.sh`     

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

  5. You can return to the MC server console with a simple `su - mcfugazi && screen -r minecraft_server`

Important: The server runs in default settings, be advised that it is ok to play but might be risky if not secured properly!
</details>


<details>
<summary>Polski</summary>
</details>


