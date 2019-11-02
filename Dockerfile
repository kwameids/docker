FROM centos:7
MAINTAINER kwame.k177@outlook.de
# RUN yum --exclude=openssh-\* --exclude=policycoreutils\* --exclude=libsemanage-\* --exclude=selinux-\* --exclude=iputils update -y
LABEL Remarks="This is a dockerfile for only testing purpose v0.0.1"
ENV HOME /root
WORKDIR /opt

RUN yum -y update && \
    yum -y install tree \
    && yum -y install net-tools \
    && yum -y install bash bash-completion \
    && yum -y install which vim \
    && clean all

EXPOSE 80


