FROM ubuntu:trusty

ADD http://dl.cnezsoft.com/zentao/9.1.2/ZenTaoPMS.9.1.2.zbox_64.tar.gz  /tmp
RUN tar -zxvf /tmp/ZenTaoPMS.9.1.2.zbox_64.tar.gz -C /opt

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 80

ENTRYPOINT  ["entrypoint.sh"]
