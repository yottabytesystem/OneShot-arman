#!/bin/bash

echo "[*] OneShot (OneShotPin) Installer - Optimized for your Python Code"

# Check for root privileges
if [ "$EUID" -ne 0 ]; then 
  echo "[!] Error: Please run this script as root (use sudo)."
  exit 1
fi

if command -v pkg >/dev/null 2>&1; then
    echo "[*] Termux detected"
    pkg update -y
    pkg install -y root-repo
    pkg install -y python git tsu iw wpa-supplicant pixiewps openssl
    # Ensure python maps to python3 in Termux context if needed
    alias python=python3

elif [ -f /etc/debian_version ]; then
    echo "[*] Debian/Kali detected"
    sudo apt update
    sudo apt install -y python3 iw wpasupplicant pixiewps

elif command -v pacman >/dev/null 2>&1; then
    echo "[*] Arch detected"
    sudo pacman -Sy --noconfirm python iw wpa_supplicant pixiewps

else
    echo "[!] Error: Unsupported system. Please install dependencies manually."
    exit 1
fi

# Setting executable permissions for your python script
if [ -f "oneshot.py" ]; then
    chmod +x oneshot.py
    echo "[*] Permissions set for oneshot.py"
else
    echo "[!] Warning: oneshot.py not found in the current directory."
fi

echo "[✓] Installation Complete!"
echo "[*] You can now run the script using:"
echo "    sudo python3 oneshot.py -i wlan0 -K"
