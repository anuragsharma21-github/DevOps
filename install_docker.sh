# Reference  - https://docs.docker.com/engine/install/ubuntu/ #
set -x
# Uninstall Docker if any previous installation exist #
apt-get remove docker docker-engine docker.io containerd runc

# remove key file if exist from previous installations #
rm -rf /usr/share/keyrings/docker-archive-keyring.gpg

# Remove Prometheous_Grafana Folder is already exists #
rm -rf /home/ubuntu/Prometheous_Grafana
rm -rf /home/ubuntu/prometheous

# Update the apt package to allow to use a repository over HTTPS #
apt-get update
apt-get install -y  apt-transport-https ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key #
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository #
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine #
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Stress Module to Test Alerts while putting load on the containers #
apt install stress

# Check docker service and Swarm #

docker ps
docker service ls
