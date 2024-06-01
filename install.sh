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
popos_path="./pop-os/install.sh"
endeavouros_path="./endeavour-os/install.sh"

case $choice in
    1)
        echo "Starting to Arch configuration..."
        bash "$arch_path"
        ;;
    2)
        echo "Starting to Pop_OS configuration..."
        bash "$popos_path"
        ;;
    3)
        echo "Starting to EndeavourOS configuration..."
        bash "$endeavouros_path"
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
