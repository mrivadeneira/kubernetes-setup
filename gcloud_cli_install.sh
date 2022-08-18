#! /bin/bash
#update and install dependencies
sudo apt-get install apt-transport-https ca-certificates gnupg;

#generate keys
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list;
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg

#install
sudo apt-get update && sudo apt-get install google-cloud-cli;
sudo apt-get install kubectl;
