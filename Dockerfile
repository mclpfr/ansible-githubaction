FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible docker.io python3-pip && \
    pip3 install docker

WORKDIR /ansible
