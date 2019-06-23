from ubuntu:18.04

COPY install_deps.sh /tmp/install_deps.sh
RUN bash /tmp/install_deps.sh
