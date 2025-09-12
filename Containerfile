FROM quay.io/fedora/fedora-bootc:latest

RUN dnf update -y && dnf clean all

#include unit files and containers
ADD etc etc
ADD usr usr

# Fetch the file from the URL, unzip and place it in /usr/local/bin and remove the zip file
# Change the URL to the desired file location
RUN dnf install -y unzip && dnf clean all
ADD https://github.com/SiaFoundation/walletd/releases/download/v2.10.5/walletd_linux_amd64.zip /usr/local/bin/walletd_linux_amd64.zip
RUN unzip /usr/local/bin/walletd_linux_amd64.zip -d /usr/local/bin/ && rm /usr/local/bin/walletd_linux_amd64.zip
RUN chmod +x /usr/local/bin/walletd

#add additional software
# RUN dnf install -y mdadm && dnf clean all

#enable desired units
# RUN chmod +x /usr/local/bin/create-raid.sh
# RUN systemctl enable create-raid.service
