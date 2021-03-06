FROM centos:latest

RUN yum update -y
RUN yum install -y epel-release

RUN yum install -y git gcc-c++ make openssh-server wget

RUN wget https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz
RUN tar --strip-components 1 -xzvf node-v* -C /usr/local
RUN curl -L https://npmjs.com/install.sh | sh

ADD entrypoint_ssh.sh /entrypoint_ssh.sh
