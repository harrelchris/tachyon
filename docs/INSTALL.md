# Install

## Install Dependencies

```shell
sudo apt update
sudo apt upgrade -y
sudo apt install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt install speedtest
sudo apt install git
```

## Install Tachyon

```shell
sudo git clone https://github.com/harrelchris/tachyon.git /srv/tachyon
sudo bash /srv/tachyon/scripts/install.sh
```
