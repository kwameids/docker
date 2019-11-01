FROM centos:7
MAINTAINER kwame.k177@outlook.de
# RUN yum --exclude=openssh-\* --exclude=policycoreutils\* --exclude=libsemanage-\* --exclude=selinux-\* --exclude=iputils update -y
LABEL Remarks="This is a dockerfile for only testing purpose v0.0.1"

RUN yum -y update && \
    yum -y install tree \
    && yum -y install net-tools \
    && yum -y install bash bash-completion \
    && yum clean all
ENV HOME /root
WORKDIR /opt

ADD install.sh /opt 


RUN mkdir sonarqube && mkdir sonarqube/data \
    && mkdir sonarqube/data/extensions \
    && mkdir  sonarqube/data/extensions/plugins
# Test the the installer Script ! 
RUN chmod a+x  install.sh \
    && sh install.sh 
ADD pluginstest /opt/sonarqube/data/extensions/plugins

EXPOSE 80


