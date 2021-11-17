# Reference  - https://docs.docker.com/engine/install/ubuntu/ #
set -x
apt-get update -y
apt install apache2
systemctl start apache2
