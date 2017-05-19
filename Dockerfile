FROM ubuntu:trusty

RUN apt-get update && apt-get install -y \
        apache2 libapache2-mod-php5 libapache2-mod-php5filter php5-cgi php5-fpm php5 php5-cli php5-common php5-mysql php5-json php5-ldap mysql-server \
        && rm -rf /var/lib/apt/lists/*

ADD https://downloads.sourceforge.net/project/zentao/9.1.2/ZenTaoPMS.9.1.2.zbox_64.tar.gz  /tmp
RUN tar -zxvf /tmp/ZenTaoPMS.9.1.2.zbox_64.tar.gz -C /opt

ENTRYPOINT  ["/opt/zbox/zbox start"]
