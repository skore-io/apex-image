Image based on `node:10.20.1-alpine3.11` with Terraform 0.11.14 and Apex 1.0.0-rc2 installed.

If your project uses apex to manage lambdas, you can use this image instead of trying to install apex (as the project is dead an binaries are not available anymore). A docker-compose example can be found [here](https://github.com/skore-io/apex-image/blob/main/docker-compose.example.yml)

# Building a new version of this image
A new version of this image gets built and deployed whenever a new commit gets pushed to main
