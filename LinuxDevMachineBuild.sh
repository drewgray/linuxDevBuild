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
sudo npm update -g

# apt-key adv --keyserver hkp:# //keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
# #ubuntu 16.04
# echo "deb [ arch=amd64,arm64 ] http:# //repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
# #ubuntu 12.04
# #echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
# sudo apt-get install -y mongodb-org


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
# export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
# echo "deb https:# //packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
# curl https:# //packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
# sudo apt-get update && sudo apt-get install -y google-cloud-sdk
# sudo apt-get install -y google-cloud-sdk-app-engine-python
# sudo apt-get install -y google-cloud-sdk-app-engine-java
# sudo apt-get install -y kubectl

# //update all 
sudo apt-get update

# //install vs codee
# //install google chrome
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

