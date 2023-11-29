#!/bin/bash

# Menambahkan repository Webmin
sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'

# Mengunduh kunci Webmin
wget http://www.webmin.com/jcameron-key.asc

# Menambahkan kunci ke sistem
sudo apt-key add jcameron-key.asc

# Memperbarui daftar paket
sudo apt update

# Menginstal Webmin dengan opsi -y
sudo apt install -y webmin

# Mengizinkan akses melalui port 10000 dengan UFW
sudo ufw allow 10000

# Membersihkan file sementara
rm jcameron-key.asc


