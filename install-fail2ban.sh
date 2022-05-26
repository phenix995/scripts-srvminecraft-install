#run as root

apt update
apt install -y fail2ban

cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
echo "ignoreip = 192.168.1.0/24" >> /etc/fail2ban/jail.local
echo "[sshd]" >> /etc/fail2ban/jail.local
echo "enabled = true" >> /etc/fail2ban/jail.local

echo "[sshd]" >> /etc/fail2ban/jail.d/ssh.conf
echo "enabled = true = true" >> /etc/fail2ban/jail.d/ssh.conf
echo "port = 1122" >> /etc/fail2ban/jail.d/ssh.conf
echo "filter = sshd" >> /etc/fail2ban/jail.d/ssh.conf
echo "logpath = /var/log/auth.log" >> /etc/fail2ban/jail.d/ssh.conf
echo "maxretry = 3" >> /etc/fail2ban/jail.d/ssh.conf
echo "bantime = 300" >> /etc/fail2ban/jail.d/ssh.conf
echo "ignoreip = whitelist-IP" >> /etc/fail2ban/jail.d/ssh.conf

systemctl start fail2ban
systemctl enable fail2ban
