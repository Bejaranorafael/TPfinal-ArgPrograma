FROM maven:3.8-openjdk-18-slim
WORKDIR /usr/src/app
ENV http_proxy="http://10.214.130.110:80"
ENV https_proxy="http://10.214.130.110:80"
RUN apt-get update && apt-get install -y smbclient wget unzip git sshpass
RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq
ENV http_proxy=""
ENV https_proxy=""