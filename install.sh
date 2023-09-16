#!/bin/bash

green="\e[1;32m"
endcolor="\e[0m"
folder="$HOME/storage"

clear
if [ -d "${folder}" ]
then
    echo -e "${green}[✓]STORAGE HAS BEEN SUCCESSFUL AUTHORIZED${endcolor}"
else
    termux-setup-storage
    echo -e "${green}[✓]SUCCESSFUL STORAGE AUTHORIZED${endcolor}"
fi

echo -e "${green}[*]UPDATING PACKAGES...${endcolor}"
pkg update -y
echo -e "${green}[✓]PACKAGES UPDATED${endcolor}"

echo
echo -e "${green}[*]INSTALLING DEPENDENCIES...${endcolor}"
echo
echo
echo -e "${green}[*]INSTALL PYTHON...${endcolor}"
pkg install python -y
echo -e "${green}[✓]PYTHON INSTALLED${endcolor}"
echo
echo -e "${green}[* ]INSTALL CLANG...${endcolor}"
pkg install clang -y
echo -e "${green}[✓]CLANG INSTALLED${endcolor}"
echo
echo -e "${green}[*]INSTALL LIBZMQ...${endcolor}"
pkg install libzmq -y
echo -e "${green}[✓]LIBZMQ INSTALLED${endcolor}"
echo
echo -e "${green}[*]INSTALL RUST...${endcolor}"
pkg install rust
echo -e "${green}[✓]RUST INSTALLED${endcolor}"
echo
echo -e "${green}[*]INSTALL BINUTILS...${endcolor}"
pkg install binutils -y
echo -e "${green}[✓]BINUTILS INSTALLED${endcolor}"
echo
echo -e "${green}[*]INSTALL MATURIN...${endcolor}"
pip install maturin
echo -e "${green}[✓]MATURIN INSTALLED${endcolor}"
echo -e "${green}[✓]ALL DEPENDENCIES SUCCESSFULLY INSTALLED${endcolor}"
echo

echo -e "${green}[*]INSTALL JUPYTER${endcolor}"
pip install jupyter
echo -e "${green}[✓]JUPYTER INSTALLED${endcolor}"
