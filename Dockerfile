FROM ubuntu:trusty

ADD https://downloads.sourceforge.net/project/zentao/9.1.2/ZenTaoPMS.9.1.2.zbox_64.tar.gz  /tmp
RUN tar -zxvf /tmp/ZenTaoPMS.9.1.2.zbox_64.tar.gz -C /opt

ENTRYPOINT  ["/opt/zbox/zbox start"]
