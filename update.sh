#!/bin/bash

# Ask for the sudo password once at the beginning
sudo -v

# Keep sudo active while the script is running
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Updating package list..."
sudo apt-get update

echo "Updating packages with apt..."
sudo apt update

echo "Performing full system upgrade..."
sudo apt full-upgrade -y

echo "Performing distribution upgrade..."
sudo apt dist-upgrade -y

echo "Running autoremove..."
sudo apt auto-remove -y

echo "All updates have been applied."
