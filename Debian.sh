#!/bin/bash

# Step 1: Download Chrome Remote Desktop
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

# Step 2: Install Chrome Remote Desktop
sudo apt install ./chrome-remote-desktop_current_amd64.deb

# Step 3: Install XFCE desktop environment
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

# Step 4: Configure Chrome Remote Desktop session
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

# Step 5: Disable lightdm.service
sudo systemctl disable lightdm.service

# Optional: Additional configurations or steps if needed

echo "Installation completed successfully."
