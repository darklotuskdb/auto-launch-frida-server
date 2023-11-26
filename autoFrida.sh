#!/bin/bash

echo 
echo -e "\e[31m
     _         _          
    / \  _   _| |_ ___    
   / _ \| | | | __/ _ \   
  / ___ \ |_| | || (_) |  
 /_/   \_\__,_|\__\___/   
  _____     _     _       
 |  ___| __(_) __| | __ _ 
 | |_ | '__| |/ _' |/ _' |
 |  _|| |  | | (_| | (_| |
 |_|  |_|  |_|\__,_|\__,_|
                          
\e[0m"
												   
echo -e "\e[33m By Kamaldeep Bhati (@DarkLotusKDB) <3\n\e[0m"

#termux-setup-storage
apt-get update
pkg install root-repo
apt-get install -y git curl wget command-not-found sed

mkdir -p downloads



a=$(uname -m)

if [[ "$a" == "aarch64" ]] ; then
    arc="arm64"
else
arc="$a"
fi



echo -e "\n\n\e[32m[+] Downloading latest Frida server\e[0m"
            
            latestBuild=$(curl --silent "https://api.github.com/repos/frida/frida/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
            echo -e "\n[*] Latest Frida Server Version:\e[33m $latestBuild \e[0m"
            echo -e "[*] Android Architecture:\e[33m $arc \e[0m\n\n"
            link="https://github.com/frida/frida/releases/download/${latestBuild}/frida-server-${latestBuild}-android-${arc}.xz" 
            cd downloads
            wget "$link"
            unxz frida-server-${latestBuild}-android-${arc}.xz
            rm -rf ../frida-server &> /dev/null
            mv frida-server-${latestBuild}-android-${arc} ../frida-server
            chmod +x ../frida-server

echo -e "\n\n\e[32m[+] Configuring Frida server auto start\e[0m"
    cd
    mv .bashrc .oldbashrc &> /dev/null
    sed -i '/frida-server/d' .bashrc &> /dev/null
    sed -i '/H && sh/d' .bashrc &> /dev/null
    echo -e 'su -c "/data/data/com.termux/files/home/auto-launch-frida-server/frida-server -D &"\nsu -c "export PATH=/data/data/com.termux/files/usr/bin:$PATH && sh"' >> .bashrc
source .bashrc
echo -e '\n\e[33m[*] Done, All Set!!'

echo
echo -e "Thank You,\nKamaldeep Bhati (@DarkLotusKDB)"
echo
echo -e "\e[31mHappy Hacking :-)\e[0m"
echo

