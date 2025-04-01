#!/bin/bash

# Move to /opt directory
cd /opt || { echo "Failed to change directory to /opt"; exit 1; }

# Give execution permissions to the script
sudo chmod +x pimpmykali.sh
sudo ./pimpmykali.sh

sudo chmod +x /home/kali/New-VM-Setup/detect.exp 
sudo /home/kali/New-VM-Setup/detect.exp 

# Wait for pimpmykali to finish and look for the specific message from the output 
sudo tail /f /home/kali/New-VM-Setup/pimpmykali.log | grep -m 1 "All Done! Happy Hacking!"
echo
# Once found continue 
echo "PimpMyKali setup is complete. Continuing...."
echo
echo "Installing feroxbuster" 
sudo apt install feroxbuster
echo  "feroxbuster Installed. Setting up Home Directory...."
cd /home/kali/
rm -rf Music Pictures Public Templates Videos
mkdir ctf 
mkdir tools
mkdir transfer 
mkdir courses
cd ctf && mkdir htb && mkdir pg && mkdir thm && mkdir vulnhub && mkdir vulnlab  
cd /home/kali/transfer 
echo 
echo "PimpMyKali setup is complete. Continuing...."
echo 
echo "Installing feroxbuster"
sudo apt install feroxbuster
echo  "feroxbuster Installed. Setting up Home Directory...."
cd /home/kali/
rm -rf Music Pictures Public Templates Videos
mkdir ctf
mkdir tools
mkdir transfer
mkdir courses
cd ctf && mkdir htb && mkdir pg && mkdir thm && mkdir vulnhub && mkdir vulnlab  
cd /home/kali/transfer 
echo "Downloading useful Scripts/Tools into transfer directory" 
# winpeas
wget https://github.com/peass-ng/PEASS-ng/releases/download/20250330-9284b167/winPEASx64.exe
# linpeas 
wget https://github.com/peass-ng/PEASS-ng/releases/download/20250330-9284b167/linpeas.sh
# sharphound.ps1 
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Enumeration/SharpHound/SharpHound.ps1
# sharphound.exe
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Enumeration/SharpHound/SharpHound.exe
# seatbelt
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Enumeration/Seatbelt.exe
# sharup
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Enumeration/SharpUp.exe
# sharpview 
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Enumeration/SharpView.exe
# NoPowerShell
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Enumeration/NoPowerShell.exe
# Reubeus 
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/Rubeus.exe
# SharpSCCM
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/SharpSCCM.exe
# SpoolSample 
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/SpoolSample.exe
# RunasCs
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/RunasCs.exe
# SharpRDP
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/SharpRDP.exe
# SharpSQL
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/SharpSQL.exe
# SharpMove
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/SharpMove.exe
# Sharpmad
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/Sharpmad.exe
# SharpGPO
wget https://github.com/jakobfriedl/precompiled-binaries/blob/main/LateralMovement/GPOAbuse/SharpGPO.exe
# SharpGPOAbuse
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/GPOAbuse/SharpGPOAbuse.exe
# Certify 
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/CertificateAbuse/Certify.exe
# PassTheCert
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/CertificateAbuse/PassTheCert.exe
# ForgeCert
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/CertificateAbuse/ForgeCert.exe
# ADSyncDecrypt 
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/AzureAD/ADSyncDecrypt.exe
# AzyreAD_Decrypy_MSOL
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/LateralMovement/AzureAD/AzureAD_Decrypt_MSOL.ps1
# mimikatz
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/mimikatz.exe
# SharpDPAPI
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/SharpDPAPI.exe
# SharpChrome
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/SharpChrome.exe
# SharpKatz
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/SharpKatz.exe
# SharpLAPS
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/SharpLAPS.exe
# BetterSafetyKatz
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/BetterSafetyKatz.exe
# GMSAPasswordReader
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Credentials/GMSAPasswordReader.exe
# PrintSpoofer
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/Token/PrintSpoofer64.exe
# NetworkServiceExploit
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/Token/NetworkServiceExploit.exe
# GodPotato
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/Token/GodPotato.exe
# JuicyPotato
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/Token/JuicyPotato.exe
# SharpEfsPotato
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/Token/SharpEfsPotato.exe
# KrbRelayUp
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/KrbRelayUp.exe
# KrbRelay
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/PrivilegeEscalation/KrbRelay/KrbRelay.exe
# PowerView
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Scripts/PowerView.ps1
# Powermad
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Scripts/Powermad.ps1
# Inveigh
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Scripts/Inveigh.ps1
# PowerUp
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Scripts/PowerUp.ps1
# PowerUpSQL
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Scripts/PowerUpSQL.ps1
# LAPSToolkit
wget https://github.com/jakobfriedl/precompiled-binaries/raw/main/Scripts/LAPSToolkit.ps1
echo
sleep 1 
echo "Setting up custom zsh and tmux config!"
sleep 1 
apt -y install neofetch
cd /home/kali
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
mv .tmux.conf.local .tmux.conf.local.bak
git clone https://github.com/KHAOS5/New-VM-Setup.git
mv New-VM-Setup/tmux.local.conf /home/kali/.tmux.conf.local
mv .zshrc ./zshrc.bak
mv New-VM-Setup/zshrc /home/kali/.zshrc
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts


echo "Everything is set up! Happy Hacking!"
echo 
echo "Fixing VMware Tools...." 
sudo apt update && sudo apt install -y --reinstall open-vm-tools-desktop fuse 
echo 
echo "========================================"
echo "SYSTEM WILL REBOOT TO FINISH INSTALL...."
echo "========================================"
echo
sleep 2 
echo "Restarting in"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
echo "REBOOTING!"
sleep 0.5
sudo reboot 


