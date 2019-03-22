FROM centos:7
WORKDIR fossa
RUN yum install curl -y
RUN curl -LO https://storage.googleapis.com/golang/go1.10.8.linux-amd64.tar.gz
RUN tar -C /usr/local -xvzf go1.10.8.linux-amd64.tar.gz
RUN curl   -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/fossas/fossa-cli/master/install.sh | bash
ENTRYPOINT [ "fossa" ]
