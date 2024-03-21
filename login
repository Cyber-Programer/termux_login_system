#!/bin/bash
clear
echo ""
echo ""
echo ""
read -p "    Username: " usr
echo ""
read -s -p "    Password: " pass
echo ""

username=""
password=""

welcome(){

    # Declare an array with the greetings
    x=("    Welcome, Chief! 🎩" "    Hi, Captain! ⚓️")

    num_greetings=${#x[@]}

    random_index=$((RANDOM % num_greetings))

    echo "${x[random_index]}"

}

w8=0.8
w1=0.1

loading(){
    echo "    Your system is booting up. Please wait..."
    sleep $w8

    echo "    Analyzing processor speed..."
    sleep $w8



    echo "    Loading system resources..."
    sleep $w8

    echo "    Establishing network connection..."
    sleep $w8

    echo "    Configuring system settings..."
    sleep $w8

    echo "    Performing system diagnostic..."
    sleep $w8

    echo "    Running startup script..."
    sleep $w8

    echo "    Checking disk drivers..."
    sleep $w8

    echo "    Starting system services..."
    sleep $w8

    echo "    Launching user interface..."
    sleep $w8

    echo "    Booting Done ...!"
    sleep $w8
}

logo(){
    # echo " ⠀⠀⢀⣴⣶⣿⣿⣷⡶⢤⣄⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢶⣿⣿⣿⣿⣶⣄⠀⠀"
    echo ""
    echo "    ⠀⢠⡿⠿⠿⠿⢿⣿⣿⣷⣾⣆⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⡿⠿⠿⠿⠿⣦⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⡿⠆⠀⠀⠀⠀⠰⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⣀⣤⡤⠄⢤⣀⡈⢿⡄⠀⠀⠀⠀⢠⡟⢁⣠⡤⠠⠤⢤⣀⠀⠀⠀⠀";sleep $w1
    echo "    ⠐⢄⣀⣼⢿⣾⣿⣿⣿⣷⣿⣆⠁⡆⠀⠀⢰⠈⢸⣿⣾⣿⣿⣿⣷⡮⣧⣀⡠⠀";sleep $w1
    echo "    ⠰⠛⠉⠙⠛⠶⠶⠏⠷⠛⠋⠁⢠⡇⠀⠀⢸⡄⠈⠛⠛⠿⠹⠿⠶⠚⠋⠉⠛⠆";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡇⠀⠀⢸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢻⠇⠀⠀⠘⡟⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠰⣄⡀⠀⠀⣀⣠⡤⠞⠠⠁⠀⢸⠀⠀⠀⠀⡇⠀⠘⠄⠳⢤⣀⣀⠀⠀⣀⣠⠀";sleep $w1
    echo "    ⠀⢻⣏⢻⣯⡉⠀⠀⠀⠀⠀⠒⢎⣓⠶⠶⣞⡱⠒⠀⠀⠀⠀⠀⢉⣽⡟⣹⡟⠀";sleep $w1
    echo "    ⠀⠀⢻⣆⠹⣿⣆⣀⣀⣀⣀⣴⣿⣿⠟⠻⣿⣿⣦⣀⣀⣀⣀⣰⣿⠟⣰⡟⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠻⣧⡘⠻⠿⠿⠿⠿⣿⣿⣃⣀⣀⣙⣿⣿⠿⠿⠿⠿⠟⢃⣴⠟⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠙⣮⠐⠤⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠤⠊⡵⠋⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠈⠳⡀⠀⠀⠀⠀⠀⠲⣶⣶⠖⠀⠀⠀⠀⠀⢀⠜⠁⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⢀⣿⣿⡀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
}

sysinfo(){

    # Get the hostname
    hostname=$(hostname)


    # Get the kernel version
    kernel_version=$(uname -r)

    # Get the CPU model
    cpu_model=$(lscpu | grep 'Model name:' | cut -d ':' -f 2 | tr -d ' ')

    # Get the total number of CPU cores
    cpu_cores=$(lscpu | grep 'CPU(s):' | cut -d ':' -f 2 | tr -d ' ')

    # Get the total amount of RAM
    total_ram=$(cat /proc/meminfo | grep 'MemTotal:' | awk '{print $2}')

    # Get the disk usage of the root partition
    disk_usage=$(df -h / | tail -n 1 | awk '{print $5}')

    # Display the device details
    echo "    Hostname: $hostname"
    echo "    Kernel Version: $kernel_version"
    echo "    CPU Model: $cpu_model"
    echo "    CPU Cores: $cpu_cores"
    echo "    Total RAM: $total_ram"
    echo "    Disk Usage: $disk_usage"
    echo ""
    echo ""

    read -p "    Press Enter To Start $hostname  "


    
}



if [[ $usr = "$username" && $pass = "$password" ]]; then
    echo "    Success !"
    sleep 1
    clear
    logo
    welcome
    sleep 1
    clear
    loading
    clear
    sysinfo
    clear
else
    echo "    Sorry, you can't use $(whoami)"
fi
