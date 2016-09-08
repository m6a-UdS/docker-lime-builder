FROM  ubuntu:14.04
CMD ["/lime/make-lime.sh"]

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    ca-certificates 
# RUN apt-get install -y realpath
    
RUN git clone https://github.com/504ensicsLabs/LiME.git /lime
COPY make-lime.sh /lime/make-lime.sh