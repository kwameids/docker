FROM centos:7
ENV container docker
RUN yum -y install tree \
    && yum -y install net-tools \
    && yum -y install bash \
CMD ["/usr/sbin/init"]