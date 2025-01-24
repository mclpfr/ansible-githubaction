FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV ANSIBLE_REMOTE_TMP=/tmp/.ansible/tmp

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible docker.io python3-pip && \
    pip3 install docker

WORKDIR /ansible
COPY ansible.cfg /etc/ansible/ansible.cfg
