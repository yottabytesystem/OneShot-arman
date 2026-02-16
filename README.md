# 🚀 OneShot-arman
**The Most Reliable WPS Analysis & Pixie Dust Attack Tool for Linux & Termux**

OneShot-arman performs [Pixie Dust attack](https://forums.kali.org/showthread.php?24286-WPS-Pixie-Dust-Attack-Offline-WPS-Attack) without having to switch to monitor mode. Developed and optimized by **Arman** for high-performance network security testing.

---

## ✨ Features
- **Pixie Dust attack:** Fast offline WPS attack.
- **PIN Generator:** Integrated [3WiFi offline WPS PIN generator](https://3wifi.stascorp.com/wpspin).
- **Online Bruteforce:** Support for [online WPS bruteforce](https://sviehb.files.wordpress.com/2011/12/viehboeck_wps.pdf).
- **Wi-Fi Scanner:** Advanced scanning with `iw`.

---

## 🛠️ Installation & Setup


### 📱 Termux (Root Required)

```bash
pkg update -y && pkg install -y root-repo && pkg install -y git tsu python wpa-supplicant pixiewps iw openssl && git clone [https://github.com/yottabytesystem/OneShot-arman](https://github.com/yottabytesystem/OneShot-arman) && cd OneShot-arman && chmod +x installer.sh oneshot.py && sudo ./installer.sh

```
🐧 Debian/Ubuntu
```
sudo apt update && sudo apt install -y python3 wpasupplicant iw wget pixiewps git && git clone [https://github.com/yottabytesystem/OneShot-arman](https://github.com/yottabytesystem/OneShot-arman) && cd OneShot-arman && sudo python3 oneshot.py -i wlan0 -K

```
🏔️ Arch Linux
```
sudo pacman -S wpa_supplicant pixiewps wget python git && git clone [https://github.com/yottabytesystem/OneShot-arman](https://github.com/yottabytesystem/OneShot-arman) && cd OneShot-arman

```
❄️ Alpine Linux
```
sudo sh -c 'echo "[http://dl-cdn.alpinelinux.org/alpine/edge/testing/](http://dl-cdn.alpinelinux.org/alpine/edge/testing/)" >> /etc/apk/repositories'
sudo apk add python3 wpa_supplicant pixiewps iw
git clone [https://github.com/yottabytesystem/OneShot-arman](https://github.com/yottabytesystem/OneShot-arman)
cd OneShot-arman

```
🚀 Usage Examples:

Show available networks and start Pixie Dust attack:
```
sudo python3 oneshot.py -i wlan0 -K

```
Launch online WPS bruteforce with first half of PIN:
```
sudo python3 oneshot.py -i wlan0 -b 00:90:4C:C1:AC:21 -B -p 1234

```
### ⚙️ Arguments Summary



| Argument         | Description                                |
| ---------------- | ------------------------------------------ |
| -i, --interface  | Name of the interface to use (e.g., wlan0) |
| -b, --bssid      | BSSID of the target AP                     |
| -K, --pixie-dust | Run Pixie Dust attack                      |
| -B, --bruteforce | Run online bruteforce attack               |
| --mtk-wifi       | Activate MediaTek Wi-Fi driver support     |
| --iface-down     | Down interface when finished               |

🆘 Troubleshooting

RF-kill Error: Run sudo rfkill unblock wifi.
Resource Busy: Disable Wi-Fi in settings or use --iface-down.
MediaTek Devices: Use the --mtk-wifi flag on Android.

👤 Credits & Author

Lead Developer & Maintainer: Arman
Organization: yottabytesystem
Special Thanks: Monohrom, Wiire (Pixiewps)

📜 License

This project is licensed under the GNU General Public License v3.0. See the LICENSE file for more details.

​Keywords: oneshot arman, oneshot-arman, wps attack, termux network tool, arman github
