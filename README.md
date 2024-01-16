# Auto Launch Frida Server
The process involves downloading the latest version and automatically configuring it within the Termux Android application. Subsequently, upon launching the Termux application, Frida Server is initiated automatically to facilitate penetration testing.


# What sets it apart from others?
1. Initiates the Frida server automatically, eliminating the need for manual interactions.
2. Streamlines the process of switching between various Frida server versions.
3. Automatically resolves any issues related to the Frida server.
4. Frees up space by automatically removing old and unused Frida server files.
5. Chooses the appropriate Frida server based on the Android architecture.


# Youtube Video Link
[https://www.youtube.com/watch?v=stFytf3YEH0](url)


# Installation
First, download and install Termux android application from the following link:
```
https://f-droid.org/en/packages/com.termux/
```
Launch the Termux application and execute the following commands 
```
termux-setup-storage
```
```
pkg upgrade
```
```
pkg install root-repo
```
Note: If the above command does not work then select the root repo manually via inbuild Termux command i.e ``` termux-change-repo ``` and re-run the above command. 
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
![logo-autofrida-new](https://github.com/darklotuskdb/auto-launch-frida-server/assets/29382875/cead500d-9e83-4ee7-8acb-1093673d4867)


## About Me

* **DarkLotus** - *Cyber Security Researcher* - [DarkLotusKDB](https://github.com/darklotuskdb)

### Social Media Handles
* [Twitter](https://twitter.com/darklotuskdb)
* [Medium](https://medium.com/@darklotus)
* [Linkedin](https://www.linkedin.com/in/kamaldeepbhati/)
* [Instagram](https://www.instagram.com/kamaldeepbhati/)

[BuyMeACoffee](https://www.buymeacoffee.com/darklotus) If you like my work <3

