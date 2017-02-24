#//Weird issue with apt locks... remove them first
sudo rm /var/lib/dpkg/lock
export DEBIAN_FRONTEND=noninteractive
# //install all needed dev tools
sudo apt-get update
sudo apt update

sudo cp /vagrant/nodesource.list /etc/apt/sources.list.d/

sudo apt-get install -y curl
sudo apt-get install -y git
# sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-x86_64
# sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

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
sudo npm update -g

apt-key adv --keyserver hkp:# //keyserver.ubuntu.com:80 --recv 0c49f3730359a14518585931bc711f9ba15703c6
# ubuntu 16.04
#sudo sh -c 'echo "deb [ arch=amd64,arm64 ] http:# //repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list'
# ubuntu 12.04
# echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get install -y mongodb-org


# # //setup docker
# curl -fsSL https:# //apt.dockerproject.org/gpg | sudo apt-key add -
# # //verify 58118E89F3A912897C070ADBF76221572C52609D
# apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

# sudo add-apt-repository \
       # "deb https:# //apt.dockerproject.org/repo/ \
       # ubuntu-$(lsb_release -cs) \
       # main"
	   
# sudo apt-get update
# sudo apt-get -y install docker-engine
sudo apt install -y docker.io

# //install gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
#sudo sh -c 'echo "deb https:# //packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list'
#curl https:# //packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
sudo apt-get install -y google-cloud-sdk-app-engine-python
sudo apt-get install -y google-cloud-sdk-app-engine-java
sudo apt-get install -y kubectl

# //update all 
sudo apt-get update

# //install vs codee
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install -y ubuntu-make
umake ide visual-studio-code

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

mkdir ~/dev 
cd ~/dev
git clone https://github.com/drewgray/drwgry.git
git clone https://github.com/drewgray/amptimal.git

cd drwgry
npm install

# sudo VBoxClient --clipboard
# sudo VBoxClient --draganddrop
# sudo VBoxClient --display
# sudo VBoxClient --checkhostversion
# sudo VBoxClient --seamless