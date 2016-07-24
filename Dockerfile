FROM centos:7
MAINTAINER _CNOC_Voice_BCVTools_@cable.comcast.com

RUN yum update -y
RUN yum install -y bind-utils ntp less

ENV SRC_DIR=/src
ENV PATH=$PATH:$SRC_DIR/bin

RUN mkdir -p $SRC_DIR
COPY . $SRC_DIR
WORKDIR $SRC_DIR

CMD bash -C 'docker-startup.bash';'bash'
