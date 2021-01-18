APP = alpine-gcloud

IMAGE ?= $(APP)

SDK_URL ?= "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-323.0.0-linux-x86_64.tar.gz"

build:
	docker build --build-arg sdk_url=$(SDK_URL) -t $(IMAGE):latest .

run:
	docker run -it --rm --name $(APP) $(IMAGE)

cloud-build:
	gcloud builds submit --config cloudbuild.yaml .