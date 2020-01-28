FROM docker.io/library/centos:centos7

COPY filetranspile /usr/bin/filetranspile

RUN yum update -y && \
    yum install -y python3 PyYAML && \
    yum -y clean all && \
    chmod a+x /usr/bin/filetranspile

WORKDIR /srv
ENTRYPOINT ["/usr/bin/filetranspile"]
