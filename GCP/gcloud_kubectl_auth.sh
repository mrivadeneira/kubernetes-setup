#! /bin/bash

gcloud auth login;
# gcloud container clusters get-credentials <CLUSTER-NAME> --zone <ZONE-NAME> --project <PROJECT-NAME>;
export USE_GKE_GCLOUD_AUTH_PLUGIN=True;
gcloud container clusters get-credentials mrivadeneira-kubernetes --zone us-central1-a --project mrivadeneira-kubernetes-setup;