FROM  ubuntu
VOLUME        ["/lib/modules", "/lib/modules"]

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
RUN cd /lime/src && make