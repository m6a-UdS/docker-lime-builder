FROM  fedora
CMD ["/lime/make-lime.sh"]

RUN dnf update && dnf install make automake gcc gcc-c++ kernel-devel
    
RUN git clone https://github.com/504ensicsLabs/LiME.git /lime
COPY make-lime.sh /lime/make-lime.sh