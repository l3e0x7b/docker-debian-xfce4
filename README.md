# docker-debian-xfce4
Docker image for Debian with Xfce4 desktop environment.

# Supported tags
- [latest](https://github.com/l3e0x7b/docker-debian-xfce4/blob/main/Dockerfile)

# How to use
## Step 1
Start a container as follows:  
`docker run --name debian-xfce4 -d -p 3389:3389 -e ROOT_PASSWORD=123456 l3e0x7b/docker-debian-xfce4:latest`

## Step 2
Connect to the container uses RDP clients like FreeRDP, rdesktop, NeutrinoRDP or Microsoft Remote Desktop Client.

![](https://raw.githubusercontent.com/l3e0x7b/docker-debian-xfce4/main/img/1.png)
![](https://raw.githubusercontent.com/l3e0x7b/docker-debian-xfce4/main/img/2.png)
![](https://raw.githubusercontent.com/l3e0x7b/docker-debian-xfce4/main/img/3.png)

# Environment Variables
**`ROOT_PASSWORD`**  
This variable is password of root user.
