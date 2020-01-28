FROM registry.redhat.io/ubi7/ubi

COPY filetranspile /usr/bin/filetranspile

RUN yum update -y && \
    yum install -y rh-python36 rh-python36-PyYAML && \
    yum -y clean all && \
    chmod a+x /usr/bin/filetranspile

WORKDIR /srv
ENTRYPOINT ["/usr/bin/filetranspile"]
