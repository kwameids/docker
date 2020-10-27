FROM centos:7
MAINTAINER kwame.k177@outlook.de
# RUN yum --exclude=openssh-\* --exclude=policycoreutils\* --exclude=libsemanage-\* --exclude=selinux-\* --exclude=iputils update -y
LABEL Remarks="This is a dockerfile for only testing purpose v0.1"
ENV container docker
ENV HOME /root
WORKDIR /opt

RUN yum -y update \
    yum -y install tree \
    && yum -y install net-tools \
    && yum -y install bash bash-completion \
    && yum -y install which vim \
    && yum clean all 

RUN yum -y install systemd; yum clean all; \
    (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
    rm -f /lib/systemd/system/multi-user.target.wants/*;\
    rm -f /etc/systemd/system/*.wants/*;\
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*;\
    rm -f /lib/systemd/system/anaconda.target.wants/*;

EXPOSE 13282

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
    



