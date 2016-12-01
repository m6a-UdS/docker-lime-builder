# docker-lime-builder
A simple container for building the LiME kernel module (https://github.com/504ensicsLabs/LiME) on CoreOS

Example usage:

```bash
~$ git pull https://github.com/m6a-UdS/docker-lime-builder.git
~$ cd docker-lime-builder
~/docker-lime-builder $ docker build -t lime .
~/docker-lime-builder $ docker run -v /lib/modules:/lib/modules -v /home/core/docker-lime-builder/:/host lime bash /lime/make-lime.sh

#in order to take a memory snapshot, execute:
~/docker-lime-builder $ sudo ./dump-memory.sh
```
