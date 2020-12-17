FROM node:10.20.1-alpine3.11

ARG TERRAFORM_VERSION="0.11.14"
ARG TERRAFORM_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

RUN wget ${TERRAFORM_URL} -O terraform.zip && \
    unzip terraform.zip -d /bin && \
    rm terraform.zip

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

COPY ./apex /usr/local/bin
RUN chmod +x /usr/local/bin/apex

WORKDIR /app
