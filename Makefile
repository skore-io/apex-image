LOCAL_TAG=node-apex:latest
CONTAINER_REGISTRY=959372522499.dkr.ecr.us-east-1.amazonaws.com
REMOTE_TAG=$(CONTAINER_REGISTRY)/$(LOCAL_TAG)

docker-login:
	aws ecr get-login-password --region us-east-1 \
		| docker login --username AWS --password-stdin $(CONTAINER_REGISTRY)

download-apex:
	aws s3 cp s3://skore-development/apex/apex-Linux bin/apex

build-image:
	docker build -t $(LOCAL_TAG) .

push-image:
	docker tag $(LOCAL_TAG) $(REMOTE_TAG)
	docker push $(REMOTE_TAG)
