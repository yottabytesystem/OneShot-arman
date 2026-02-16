#!/bin/bash

echo "[*] OneShot (Arman edition) installer"

if command -v pkg >/dev/null 2>&1; then
    echo "[*] Termux detected"
    pkg update -y
    pkg install -y root-repo
    pkg install -y python git tsu iw wpa-supplicant pixiewps openssl

elif [ -f /etc/debian_version ]; then
    echo "[*] Debian/Kali detected"
    sudo apt update
    sudo apt install -y python3 iw wpasupplicant pixiewps

elif command -v pacman >/dev/null 2>&1; then
    echo "[*] Arch detected"
    sudo pacman -Sy --noconfirm python iw wpa_supplicant pixiewps

else
    echo "Unsupported system"
    exit 1
fi

chmod +x oneshot.py
echo "[✓] Done"
echo "Run: sudo python3 oneshot.py -i wlan0 -K"
