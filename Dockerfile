FROM  ubuntu:14.04
VOLUME ["/lib/modules", "/lime/lime.ko"]
CMD ["lime/make-lime.sh"]

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    make \
    automake \
    gcc \
    build-essential \
    g++ \
    cpp \
    libc6-dev \
    man-db \
    autoconf \
    pkg-config \
    ca-certificates
    
RUN mkdir /lime
RUN git clone https://github.com/504ensicsLabs/LiME.git /lime
COPY make-lime.sh /lime/make-lime.sh