sudo apt install -y apt-transport-https ca-certificates wget gnupg2
wget -qO - https://packages.sury.org/php/apt.gpg | sudo gpg --dearmour -o /usr/share/keyrings/sury-php.gpg
echo "deb [signed-by=/usr/share/keyrings/sury-php.gpg] https://packages.sury.org/java/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-java.list
sudo apt update
sudo apt install -y openjdk-21-jdk
java -version
