#run as root

apt update
apt install -y ufw

systemctl enable ufw
systemctl start ufw

#Configure Firewall ufw
ufw default deny
ufw allow 1122
ufw allow 11265
ufw enable
ufw status verbose

systemctl stop ufw
systemctl start ufw
