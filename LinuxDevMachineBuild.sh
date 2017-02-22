//install all needed dev tools
sudo apt install curl
sudo apt-get install git

//install nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
//install npm global packages
sudo npm install -g angular
sudo npm install -g typescript
sudo npm install -g express
sudo npm install -g mongodb
sudo npm install -g mongoose
sudo npm install -g react
sudo npm install -g flux
sudo npm install -g pug


//setup docker
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
//verify 58118E89F3A912897C070ADBF76221572C52609D
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"
	   
sudo apt-get update
sudo apt-get -y install docker-engine

//install gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
sudo apt-get install google-cloud-sdk-app-engine-python
sudo apt-get install google-cloud-sdk-app-engine-java
sudo apt-get install kubectl

//update all 
sudo apt-get update

//install vs codee
//install google chrome


//sign in to git and pull
git config --global user.email "drewgray@gmail.com"
git config --global user.name "Drew Gray"

//sign in to gcloud and pull