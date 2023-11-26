# Auto Launch Frida Server
The process involves downloading the latest version and automatically configuring it within the Termux Android application. Subsequently, upon launching the Termux application, Frida Server is initiated automatically to facilitate penetration testing.

# Installation
First, download and install Termux android application from the following link:
```
https://f-droid.org/en/packages/com.termux/
```
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
Now, close the Termux application, relaunch it, and then test the Objection tool. Observe that everything works smoothly.

**Next time you wish to run the Frida Server, simply launch the Termux application. It will automatically start the frida-server in the background along with the launch of the Termux application.**

If you need to upgrade the Frida Server version in the future, just run the ``` ./autoFrida.sh ``` script.


## Screenshot
![logo-autofrida](https://github.com/darklotuskdb/auto-launch-frida-server/assets/29382875/47b73d38-b216-4ff3-ae35-0571b02fcb92)


## About Me

* **DarkLotus** - *Cyber Security Researcher* - [DarkLotusKDB](https://github.com/darklotuskdb)

### Social Media Handles
* [Twitter](https://twitter.com/darklotuskdb)
* [Medium](https://medium.com/@darklotus)
* [Linkedin](https://www.linkedin.com/in/kamaldeepbhati/)
* [Instagram](https://www.instagram.com/kamaldeepbhati/)

[BuyMeACoffee](https://www.buymeacoffee.com/darklotus) If you like my work <3

