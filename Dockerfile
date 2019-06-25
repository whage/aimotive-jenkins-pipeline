from ubuntu:18.04

COPY install_deps.sh /tmp/install_deps.sh
COPY build_yaml_cpp.sh /tmp/build_yaml_cpp.sh

RUN /tmp/install_deps.sh

ENTRYPOINT ["/tmp/build_yaml_cpp.sh"]
