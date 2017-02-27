#//Weird issue with apt locks... remove them first
sudo rm /var/lib/dpkg/lock
export DEBIAN_FRONTEND=noninteractive
# //install all needed dev tools
sudo apt-get update
sudo apt update

sudo cp /vagrant/nodesource.list /etc/apt/sources.list.d/

sudo apt-get install -y curl
sudo apt-get install -y git

# //install nodejs
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
sudo apt-get update
curl -sL https:# //deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo apt-get install -y npm

sudo npm update npm -g
# //install npm global packages
sudo npm install -g rxjs
sudo npm install -g zone.js
sudo npm install -g @angular/core
sudo npm install -g @angular/cli
sudo npm install -g typescript
sudo npm install -g express
sudo npm install -g mongoose
sudo npm install -g react
sudo npm install -g flux
sudo npm install -g pug
sudo npm install -g nodemon
sudo npm install -g jasmine
sudo npm install -g karma
sudo npm install -g karmacli
sudo npm install -g angular2-flash-messages
sudo npm update -g

apt-key adv --keyserver hkp:# //keyserver.ubuntu.com:80 --recv 0c49f3730359a14518585931bc711f9ba15703c6
# ubuntu 16.04
sudo sh -c 'echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" >> /etc/apt/sources.list.d/mongodb-org-3.4.list'
sudo apt-get update
sudo apt-get install -y mongodb-org


# # //setup docker
curl -fsSL https:# //apt.dockerproject.org/gpg | sudo apt-key add -
# # //verify 58118E89F3A912897C070ADBF76221572C52609D
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

sudo add-apt-repository "deb [arch=amd64] https:# //apt.dockerproject.org/repo/ubuntu-$(lsb_release -cs) main"
	   
sudo apt-get update
sudo apt-get -y install docker-engine
#sudo apt install -y docker.io

# //install gcloud
sudo sh -c 'export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"'
sudo sh -c 'echo "deb [arch=amd64] https://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main" >> /etc/apt/sources.list.d/google-cloud-sdk.list'
curl https:# //packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
sudo apt-get install -y google-cloud-sdk-app-engine-python
sudo apt-get install -y google-cloud-sdk-app-engine-java
sudo apt-get install -y kubectl

# //update all 
sudo apt-get update

# # //install vs code !Just install it from website
# wget https://az764295.vo.msecnd.net/stable/5be4091987a98e3870d89d630eb87be6d9bafd27/code_1.5.3-1474533365_amd64.deb
# sudo dpkg -i code_1.5.3-1474533365_amd64.deb


# //install google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install -y google-chrome-stable

# //install google postman


# //sign in to git and pull
git config --global user.email "drewgray@gmail.com"
git config --global user.name "Drew Gray"

# //sign in to gcloud and pull

mkdir dev 
cd dev
sudo git clone https://github.com/drewgray/drwgry.git
sudo git clone https://github.com/drewgray/amptimal.git

cd drwgry
npm install

# sudo VBoxClient --clipboard
# sudo VBoxClient --draganddrop
# sudo VBoxClient --display
# sudo VBoxClient --checkhostversion
# sudo VBoxClient --seamless