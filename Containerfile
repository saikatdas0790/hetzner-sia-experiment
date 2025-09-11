FROM quay.io/fedora/fedora-bootc:latest

#include unit files and containers
ADD etc etc
ADD usr usr

#add additional software
RUN dnf install -y mdadm && dnf clean all

#enable desired units
RUN chmod +x /usr/local/bin/create-raid.sh
RUN systemctl enable create-raid.service
