# docker-lime-builder
A simple container for building LiME (https://github.com/504ensicsLabs/LiME) on CoreOS

Example usage:

```bash
git pull https://github.com/m6a-UdS/docker-lime-builder.git
docker build -t lime .
docker run -v /lib/modules:/lib/modules -v /home/core/docker-lime-builder/:/host lime bash /lime/make-lime.sh
sudo insmod lime.ko "path=/home/core/memory.lime format=lime"
```
