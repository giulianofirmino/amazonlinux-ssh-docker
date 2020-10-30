FROM amazonlinux

RUN yum -y update
RUN yum -y install binutils gcc make tar zip unzip wget procps-ng openssh-server passwd sudo

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN echo "123456" | passwd --stdin root

EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
