FROM ubuntu:18.04
LABEL maintainer="Lisupy"
LABEL description="The environment of my development"

# using the tuna source & install 
RUN sed -i -E 's/(archive|security).ubuntu.com/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:' /etc/dpkg/dpkg.cfg.d/excludes && \
    apt-get clean && apt-get update -y && apt-get -y upgrade && \
    apt-get install -y man manpages-posix build-essential cmake vim curl netcat git gdb locales && \
    apt-get install -y zlib1g zlib1g-dev libbz2-dev libreadline-dev sqlite libsqlite3-dev \
                   libssl-dev liblzma-dev libgdbm-dev libncurses5-dev libgdbm-compat-dev uuid-dev && \
    apt-get clean

RUN locale-gen en_US.UTF-8 && \
    echo 'export LANG=en_US.UTF-8' >> /root/.bashrc && \
    echo 'export LC_ALL=en_US.UTF-8' >> /root/.bashrc && \
    curl https://pyenv.run | bash && echo 'export PATH="$HOME/.pyenv/bin:$PATH"\neval "$(pyenv init -)"\neval "$(pyenv virtualenv-init -)"' >> ~/.bashrc


WORKDIR "/workdir"

VOLUME [ "/workdir" ]

ENTRYPOINT [ "/bin/bash" ]