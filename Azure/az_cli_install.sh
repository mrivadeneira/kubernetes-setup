#! /bin/bash

#Get packages needed for the install process
sudo apt-get update;
sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg;

#Keys, fingerprints and repositories
curl -sL https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
    sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null;

AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
    sudo tee /etc/apt/sources.list.d/azure-cli.list;

sudo apt-get update;
sudo apt-get install azure-cli;