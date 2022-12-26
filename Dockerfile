FROM centos:centos7

# install c compiler
RUN yum install file make gcc -y

# install rustup
ENV RUST_VERSION stable
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain ${RUST_VERSION}
ENV PATH $PATH:$HOME/.cargo/bin
RUN /root/.cargo/bin/rustup install ${RUST_VERSION}

