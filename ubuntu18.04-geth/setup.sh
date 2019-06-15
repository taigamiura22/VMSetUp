sudo apt update
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt update
sudo apt install -y docker-ce

echo grep -i docker /etc/group
sudo gpasswd -a $(whoami) docker
echo grep -i docker /etc/group

echo docker version

sudo -i
curl -L "https://github.com/docker/compose/releases/download/1.12.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
exit

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt update

sudo apt install -y ethereum
geth version

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y build-essential
sudo apt install -y nodejs

node -v
npm -v

sudo npm install -g truffle@4.1.15
truffle version

sudo apt install -y git
git version
