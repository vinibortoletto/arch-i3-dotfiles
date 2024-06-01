#!/bin/bash

echo ""
echo "Select install configuration:"
echo ""
echo "1. Arch"
echo "2. Pop_OS"
echo "3. EndeavourOS"
echo ""
echo -n "Enter your choice: "

read choice

arch_path="./arch/install.sh"
popos_path="./popos/install.sh"
endeavouros_path="./endeavouros/install.sh"

case $choice in
    1)
        echo "Starting to Arch configuration..."
        cd ./arch
        bash ./install.sh
        ;;
    2)
        echo "Starting to Pop_OS configuration..."
        cd ./popos
        bash ./install.sh
        ;;
    3)
        echo "Starting to EndeavourOS configuration..."
        cd ./endeavouros
        bash ./install.sh
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
