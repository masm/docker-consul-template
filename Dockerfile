FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

ENTRYPOINT ["/bin/consul-template"]

RUN curl -sSL https://github.com/hashicorp/consul-template/releases/download/v0.9.0/consul-template_0.9.0_linux_amd64.tar.gz | tar -xvzC /tmp && \
    mv /tmp/consul-template_0.9.0_linux_amd64/consul-template /bin/consul-template && \
    rm -rf /tmp/consul-template_0.9.0_linux_amd64
