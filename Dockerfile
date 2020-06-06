FROM ubuntu

COPY CHECKSUMS /
RUN apt-get update && apt-get -y install curl                                         \
    && rm -rf /var/lib/{apt,dpkg}                                                     \
    && curl -O https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz \
    && tar zxf cloudflared-stable-linux-amd64.tgz                                     \
    && rm -f cloudflared-stable-linux-amd64.tgz                                       \
    && sha512sum -c CHECKSUMS                                                         \
    && mv cloudflared /usr/bin

ENTRYPOINT ["/usr/bin/cloudflared"]
