# OS Images centos7
    - This is a dockerfile for only testing purpose v1.2
# How to use the Image 
* To start docker Container run: \
` docker run --privileged  -ti -e container=docker  -v /sys/fs/cgroup:/sys/fs/cgroup  kusikdevops/mycentos7:v1.2 /usr/sbin/init `


# Enable Yum-cron Tool 
* ` sudo systemctl enable yum-cron.service ` 
* ` sudo systemctl start yum-cron.service ` 
* ` sudo systemctl status yum-cron.service `