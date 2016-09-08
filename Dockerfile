FROM  fedora
CMD ["/lime/make-lime.sh"]

RUN dnf -y update && dnf -y clean all
RUN dnf -y install make automake gcc gcc-c++ kernel-devel && dnf -y clean all
RUN dnf -y install git && dnf -y clean all
    
RUN git clone https://github.com/504ensicsLabs/LiME.git /lime
COPY make-lime.sh /lime/make-lime.sh