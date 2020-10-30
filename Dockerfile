FROM amazonlinux

RUN yum -y update; yum clean all
RUN yum -y install openssh-server passwd

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN useradd -rm -d /home/ubuntu -s /bin/bash -u 1000 ec2-user

RUN echo "123456" | passwd --stdin ec2-user

EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
