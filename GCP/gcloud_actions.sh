#! /bin/bash

#set project
gcloud init
gcloud config set project mrivadeneira-kubernetes;

#enable billing
#gcloud alpha billing projects link <PROJECT-NAME> --billing-account <PROJECT-ID>
gcloud alpha billing projects link mrivadeneira-kubernetes-setup --billing-account 014501-2CA1BA-6F24D8;

#enable Artifact Registry API and Kubernetes Engine API
gcloud services enable artifactregistry.googleapis.com;
gcloud services enable container.googleapis.com;

#Create clusters
gcloud container clusters create mrivadeneira-kubernetes \
        --zone=us-central1-a \
        --release-channel=stable
# --disk-size=8 \