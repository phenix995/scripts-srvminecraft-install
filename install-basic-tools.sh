apt update
apt install -y sudo
apt install -y qemu-guest-agent qemu-utils
systemctl start qemu-guest-agent
apt install -y vim curl git htop bpytop wget tmux neofetch net-tools cifs-utils
usermod -aG sudo debian
