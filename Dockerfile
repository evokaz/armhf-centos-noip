FROM evokaz/armhf-centos

RUN yum update -y; yum clean all

RUN yum install -y \
  gcc \
  make \
  wget; yum clean all

ADD run.sh /etc/init.d/
ADD run_setup.sh /etc/init.d/

ENTRYPOINT ["/etc/init.d/run.sh"]
CMD ["-D", "FOREGROUND"]