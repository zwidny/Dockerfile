# ssh-server docker images

## Quick Start
Step 0. Make image  
```text
$ cd ubuntu/18.04
$ docker build -t zwidny/openssh:7.6 .
```

Step 1. Make container
```
$ docker run -d -P --name server zwidny/openssh:7.6
4a81dcdef9b3b04eb9da0a349bf9d55f17811e59c7c810927bff6e4ab9f040e6
```
Step 2. Inspect IP
```
$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server
172.17.0.4
```
Step 3. Login with root:toor123$
```
$ ssh root@172.17.0.4
```

## Attention
Linux only
