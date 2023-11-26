# Auto Launch Frida Server
The process involves downloading the latest version and automatically configuring it within the Termux Android application. Subsequently, upon launching the Termux application, Frida Server is initiated automatically to facilitate penetration testing.

# Installation
```
termux-setup-storage
```
```
pkg upgrade
```
```
pkg install root-repo
```
Note: If the above command does not work then select the root repo manually via inbuild Termux command i.e ``` termux-change-repo ``` and rerun the above command. 
```
apt-get update
```
```
apt-get install -y git curl wget sed command-not-found
```
```
git clone https://github.com/darklotuskdb/auto-launch-frida-server.git && cd auto-launch-frida-server && chmod +x autoFrida.sh
```
```
./autoFrida.sh
```
