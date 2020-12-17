# Authenticate Docker client on ECR
Retrieve an authentication token and authenticate your Docker client to your registry.
```sh
make docker-login
```

# Build and deploy a new image version
If you have uploaded a new version of apex to s3 and want to update the Docker image
```sh
make download-apex
make build-image
make push-image
```
