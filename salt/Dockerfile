FROM centos:7

MAINTAINER Tairan Wang <tairan.wang@gmail.com>

RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/epel-release-latest-7.noarch.rpm

# Update Current Image
RUN yum install -y libcom_err && yum update -y

# Install Salt Dependencies
RUN yum -y install --enablerepo=epel \
  python \
  PyYAML \
  m2crypto \
  python-crypto \
  python-msgpack \
  python-zmq \
  python-setuptools \
  && yum clean all

RUN easy_install \
  jinja2 \
  requests
