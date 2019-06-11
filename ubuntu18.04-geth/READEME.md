### set up command
vagrant up --provision
vagrant ssh
curl -o ./setup.sh https://raw.githubusercontent.com/taigamiura22/VMSetUp/master/ubuntu18.04-geth/setup.sh
sh setup.sh
dataディレクトは共通ディレクトとして設置
