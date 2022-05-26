git clone https://github.com/phenix995/scripts-srvminecraft-install.git
cp scripts-srvminecraft-install/install-srvminecraft.sh /home/debian/

bash scripts-srvminecraft-install/install-basic-tools.sh
bash scripts-srvminecraft-install/install-fail2ban.sh
bash scripts-srvminecraft-install/install-ufw.sh

apt update
apt upgrade -y
apt autoremove -y
reboot
