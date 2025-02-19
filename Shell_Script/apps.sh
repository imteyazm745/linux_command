# I've created an .sh script that will automatically install all the required applications in fresh linux. 
# Replace 'yourpassword' with your actual MySQL root password before running it. Let me know if you need any modifications! 🚀

#!/bin/bash

# Update and upgrade system
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install essential utilities
echo "Installing essential utilities..."
sudo apt install -y curl wget unzip build-essential

# Install Google Chrome
echo "Installing Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install

# Install Python
echo "Installing Python..."
sudo apt install -y python3 python3-pip python3-venv

# Install Git
echo "Installing Git..."
sudo apt install -y git

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

# Install MySQL & Workbench
echo "Installing MySQL and Workbench..."
sudo apt install -y mysql-server
sudo snap install mysql-workbench-community

# Set MySQL Root Password
echo "Setting MySQL root password..."
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yourpassword'; FLUSH PRIVILEGES;"

# Install DBeaver
echo "Installing DBeaver..."
sudo snap install dbeaver-ce

# Install VS Code
echo "Installing VS Code..."
sudo apt install -y software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
sudo apt update
sudo apt install -y code

# Final message
echo "All applications have been installed successfully! Please restart your system if needed."
