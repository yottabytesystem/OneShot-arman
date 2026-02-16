
# 🚀 OneShot-arman
**The Most Reliable WPS Analysis & Pixie Dust Attack Tool for Linux & Termux**

OneShot-arman performs Pixie Dust attack without having to switch to monitor mode. Developed and optimized by Arman, this tool is designed for efficient network security testing on both Android (Termux) and desktop Linux.

---

## ✨ Features
 - Pixie Dust attack: Fast offline WPS attack.
 - PIN Generator: Integrated 3WiFi offline WPS PIN generator.
 - Online Bruteforce: Support for online WPS bruteforce.
 - Wi-Fi Scanner: Highlighting based on iw for easy target identification.

---

## 🛠️ Installation & Setup

### 📱 Termux (Root Required)
Use the automated installer for a quick setup:
pkg update -y && pkg install -y root-repo
pkg install -y git tsu python wpa-supplicant pixiewps iw openssl
git clone https://github.com/yottabytesystem/OneShot-arman
cd OneShot-arman
chmod +x installer.sh oneshot.py
sudo ./installer.sh

### 🐧 Debian/Ubuntu
sudo apt update
sudo apt install -y python3 wpasupplicant iw wget pixiewps
git clone https://github.com/yottabytesystem/OneShot-arman
cd OneShot-arman
sudo python3 oneshot.py -i wlan0 -K

---

## 🚀 Usage Examples

Start Pixie Dust attack on a specified BSSID:
sudo python3 oneshot.py -i wlan0 -b 00:90:4C:C1:AC:21 -K

Show available networks and start Pixie Dust attack:
sudo python3 oneshot.py -i wlan0 -K

---

## ⚙️ Arguments Summary
-i, --interface : Name of the interface to use (e.g., wlan0)
-b, --bssid     : BSSID of the target AP
-K, --pixie-dust : Run Pixie Dust attack
-B, --bruteforce : Run online bruteforce attack
--mtk-wifi      : Activate MediaTek Wi-Fi driver support

---

## 🆘 Troubleshooting
- RF-kill Error: Run 'sudo rfkill unblock wifi'.
- Resource Busy: Disable Wi-Fi in settings or use '--iface-down'.
- MediaTek Devices: Use the '--mtk-wifi' flag on Android.

---

## 👤 Credits & Author
- Maintained by: Arman (github.com/yottabytesystem)
- Original Implementation: rofl0r
- Special Thanks: Monohrom (Testing), Wiire (Pixiewps)

## 📜 License
This project is licensed under the GNU General Public License v3.0.

---
Keywords: oneshot arman, oneshot-arman, wps attack, pixie dust attack termux, arman github tool, yottabytesystem
