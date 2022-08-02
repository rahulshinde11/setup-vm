
# Sets up ubuntu VM with docker and docker-compose

# os updates
sudo apt-get --yes update
sudo apt-get --yes --force-yes upgrade

# docker
sudo apt-get --yes install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt-get --yes update

sudo apt-get --yes install docker-ce docker-ce-cli containerd.io


sudo usermod -aG docker $USER


#PIP 3
sudo apt-get -y install python3-pip


# Docker compose
pip3 install docker-compose


