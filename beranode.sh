#!/bin/bash

#31: Red
#32: Green
#33: Yellow
#34: Blue
#35: Magenta
#36: Cyan

# Function to display colored text
print_color() {
    COLOR=$1
    TEXT=$2
    echo -e "\e[${COLOR}m${TEXT}\e[0m"
}

# Function for colored read command
read_color() {
    COLOR=$1
    PROMPT=$2
    shift 2
    echo -e "\e[${COLOR}m${PROMPT}\e[0m"
    read "$@"
}

# Function to prompt user to press any key to continue
press_any_key() {
    echo -e "\e[36mPress any key to continue...\e[0m"
    read -n 1 -s  # -n 1 reads 1 character, -s hides the input
}

# Install KOREAN

print_color "36" "Install KOREAN"

sudo apt-get install language-pack-ko -y

sudo locale-gen ko_KR.UTF-8

sudo update-locale LANG=ko_KR.UTF-8 LC_MESSAGES=POSIX

print_color "36" "sudo apt update && sudo apt upgrade -y"
sudo apt update && sudo apt upgrade -y

sudo apt-get update && sudo apt autoremove -y
print_color "36" "sudo apt -qy install git make screen jq"
sudo apt -qy install git make screen jq

print_color "36" "wget https://golang.org/dl/go1.21.4.linux-amd64.tar.gz"
wget https://golang.org/dl/go1.21.4.linux-amd64.tar.gz

print_color "36" "tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz"
tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz

print_color "36" "export PATH=$PATH:/usr/local/go/bin"
export PATH=$PATH:/usr/local/go/bin

print_color "36" "go version"
go version

print_color "36" "cd $HOME && mkdir foundry && cd ~/foundry"
cd $HOME && mkdir foundry && cd ~/foundry

print_color "36" "curl -L https://foundry.paradigm.xyz | bash"
curl -L https://foundry.paradigm.xyz | bash

print_color "36" "source ~/.bashrc"
source ~/.bashrc

print_color "36" "foundryup"
foundryup

print_color "36" "cd $HOME"
cd $HOME

print_color "36" "git clone https://github.com/berachain/polaris"
git clone https://github.com/berachain/polaris

print_color "36" "cd polaris"
cd $HOME/polaris

print_color "36" "git checkout main"
git checkout main

print_color "31" "아직 끝난 거 아님"
print_color "32" "'screen -S bera' 입력 후에 'make start' 명령어 입력하기."
print_color "33" "'make start' 명령어 입력한 후에 뜨는 Seed키 잘 복사해 두기."

exec bash
