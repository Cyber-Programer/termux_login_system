# termux_login_system
This is a `bash` script. Using this script you can make you termux more beautiful and good looking and also you can set a password or login system on your termux.

## For install Run :
*First update and upgrade your system*
```bash
apt update && upgrade -y
apt install git -y
```
*Now Install the script:*
```bash
git clone https://github.com/Cyber-Programer/termux_login_system.git
cd termux_login_system
bash tmxlogin
```

## How to use proparly :

First you need any `text editor`. You can use `nano`/`mousepad`/`gedit`/`vim` and many more. Hear i use nano if you don't have nano installed then install it by runing `apt install nano -y` -> For linux `pkg install nano` -> for termux.

```bash
nano tmxlogin
```
**You need to put your `username and password` in variable.**
*When you open the tmxlogin script in any text exitor then you can see*

```bash
username=""
password=""
```

username="YOUR USER NAME" <br>
password="YOUR PASSWORD"

### After doing changes save the file.

### Now run the setup file for permanently set the username and password as your login credentials

```bash
bash setup
```
*Now follow the output everything is ok!*

## How to remove the login system from your system :
*For remove the login system you need to use the remove file*

```bash
bash remove
```

by runing this script your login system will distroy you can use your termux normally , but you need to remove 1 word from `/data/data/com.termux/files/usr/etc/bash.bashrc` file
 
Open the `/data/data/com.termux/files/usr/etc/bash.bashrc` file with any `text editor` and remove `tmxlogin` worm from the file.

Now the script will proparly closed.

## Befor 
![eeb41b79-7049-4c12-b73a-05baef99b5f9](https://github.com/Cyber-Programer/termux_login_system/assets/125746506/4d59e275-fd91-45d2-a1a8-1fcd43895e96)


## Note :
- *This script only for termux you can't use it on linux becourse it's maked for termux*
- *At first don't run the setup file bescouse the setup file will permanently set the user/pass*
- *If you run at first the `setup file` by mistake then `don't afraid` just user `blank '' username` and `blank '' password` just `press enter` to login*
- *When you type the `password` for login the password are `not show` for `privacy` just `type your password and press enter`*

