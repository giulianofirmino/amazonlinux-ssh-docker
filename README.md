# amazonlinux-ssh-docker

Building & Running
Copy the sources to your docker host and build the container:

		$ docker build -t <username>/amazonlinux-ssh-docker .

To run:

		$ docker run -d -p xxxx:22 <username>/amazonlinux-ssh-docker
  
Get the port that the container is listening on:

		$ docker ps
```
CONTAINER ID        IMAGE                 		COMMAND             CREATED             STATUS              PORTS                  NAMES
8c82a9287b23        <username>/amazonlinux-ssh-docker   /usr/sbin/sshd -D   4 seconds ago       Up 2 seconds        0.0.0.0:xxxx->22/tcp   mad_mccarthy        
```

To test, use the port that was just located:

		$ ssh -p xxxx ec2-user@localhost
