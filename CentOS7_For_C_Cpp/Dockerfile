FROM centos:centos7

RUN yum install -y epel-release \
    && yum update -y \
    && yum groupinstall -y "Development Tools" \
    && yum install -y \
    git gtest gmock \
    zsh wget cmake3 \
    && yum clean all \
    && ln -s /usr/bin/cmak3 /usr/bin/cmake

VOLUME /src
CMD ["/usr/bin/zsh"]
