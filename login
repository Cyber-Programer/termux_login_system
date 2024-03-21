#!/bin/bash

# Set the color variables
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 5)
GRAY=$(tput setaf 8)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
NC=$(tput sgr0)

clear
echo -e ""
echo -e ""
echo -e ""
read -p "${RED}    Username: ${NC}" usr
echo -e ""
read -s -p "${RED}    Password: ${NC}" pass
echo -e ""

username=""
password=""






welcome(){

    # Declare an array with the greetings
    x=("    Welcome, Chief! 🎩" "    Hi, Captain! ⚓️")

    num_greetings=${#x[@]}

    random_index=$((RANDOM % num_greetings))

    echo -e "${YELLOW}${x[random_index]}${NC}"

}

w8=0.6
w1=0.1

loading(){
    echo -e "${YELLOW}    Your system is booting up. Please wait...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Analyzing processor speed...${NC}"
    sleep $w8



    echo -e "${YELLOW}    Loading system resources...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Establishing network connection...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Configuring system settings...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Performing system diagnostic...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Running startup script...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Checking disk drivers...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Starting system services...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Launching user interface...${NC}"
    sleep $w8

    echo -e "${YELLOW}    Booting Done ...!${NC}"
    sleep $w8
}

logo(){
    echo -e "$GREEN"
    echo -e ""
    echo -e "    ⠀⢠⡿⠿⠿⠿⢿⣿⣿⣷⣾⣆⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⡿⠿⠿⠿⠿⣦⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⡿⠆⠀⠀⠀⠀⠰⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⣀⣤⡤⠄⢤⣀⡈⢿⡄⠀⠀⠀⠀⢠⡟⢁⣠⡤⠠⠤⢤⣀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠐⢄⣀⣼⢿⣾⣿⣿⣿⣷⣿⣆⠁⡆⠀⠀⢰⠈⢸⣿⣾⣿⣿⣿⣷⡮⣧⣀⡠⠀";sleep $w1
    echo -e "    ⠰⠛⠉⠙⠛⠶⠶⠏⠷⠛⠋⠁⢠⡇⠀⠀⢸⡄⠈⠛⠛⠿⠹⠿⠶⠚⠋⠉⠛⠆";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡇⠀⠀⢸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢻⠇⠀⠀⠘⡟⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠰⣄⡀⠀⠀⣀⣠⡤⠞⠠⠁⠀⢸⠀⠀⠀⠀⡇⠀⠘⠄⠳⢤⣀⣀⠀⠀⣀⣠⠀";sleep $w1
    echo -e "    ⠀⢻⣏⢻⣯⡉⠀⠀⠀⠀⠀⠒⢎⣓⠶⠶⣞⡱⠒⠀⠀⠀⠀⠀⢉⣽⡟⣹⡟⠀";sleep $w1
    echo -e "    ⠀⠀⢻⣆⠹⣿⣆⣀⣀⣀⣀⣴⣿⣿⠟⠻⣿⣿⣦⣀⣀⣀⣀⣰⣿⠟⣰⡟⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠻⣧⡘⠻⠿⠿⠿⠿⣿⣿⣃⣀⣀⣙⣿⣿⠿⠿⠿⠿⠟⢃⣴⠟⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠙⣮⠐⠤⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠤⠊⡵⠋⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠈⠳⡀⠀⠀⠀⠀⠀⠲⣶⣶⠖⠀⠀⠀⠀⠀⢀⠜⠁⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⢀⣿⣿⡀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀";sleep $w1
    echo -e "$NC"
}

sysinfo(){

    # Get the hostname
    system=$(whoami)


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
    echo -e "${CYAN}    system: $system${NC}"
    echo -e "${CYAN}    Kernel Version: $kernel_version${NC}"
    echo -e "${CYAN}    CPU Model: $cpu_model${NC}"
    echo -e "${CYAN}    CPU Cores: $cpu_cores${NC}"
    echo -e "${CYAN}    Total RAM: $total_ram${NC}"
    echo -e "${CYAN}    Disk Usage: $disk_usage${NC}"
    echo -e ""
    echo -e ""

    read -p "${RED}    Press Enter To Start $system  ${NC}"


    
}



if [[ $usr = "$username" && $pass = "$password" ]]; then
    echo -e ""
    echo -e "${GREEN}    Success !${NC}"
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
    echo -e "${RED}    Sorry, you can't use $(whoami)${NC}"
fi
