# docker-lime-builder
A simple container for building LiME (https://github.com/504ensicsLabs/LiME) on CoreOS

Usage:

```bash
git pull https://github.com/m6a-UdS/docker-lime-builder.git
docker build -t lime .
docker run -v /lib/modules:/lib/modules lime bash /lime/make-lime.sh
```
