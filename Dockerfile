FROM scratch

LABEL maintainer="daian.conrad@gmail.com"

ADD rootfs.tar.xz /

COPY hugo_0.47_Linux-64bit.deb /tmp/
COPY run.sh /

RUN dpkg -i /tmp/hugo_0.47_Linux-64bit.deb

ADD snep /site/

EXPOSE 3000/tcp

WORKDIR /site

CMD ["/run.sh"]
