# alpine-gcloud

Alpine linux plus google cloud sdk

## Using

On your local machine to have a fast gcp client

On your cloud to have a tooling/ops machine
### Variables

* APP  sets the image name, default is alpine-gcloud
* SDK_URL  sets the url to download the gcp sdk, check makefile for default

### Building

    make build 

### Running

    make run 

## Docker Hub

This image is publically available on docker hub:
    address

If you want to push yourself on dockerhub using the gcp cloud build you need
to authenticate on docker hub as described here (https://cloud.google.com/cloud-build/docs/interacting-with-dockerhub-images#authenticating_your_docker_hub_account)

Update: 

It seems the the Secret Manager is the way to go now.

https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-secrets-credentials#creating_a_cloud_kms_keyring_and_cryptokey

