FROM centos:7

RUN yum install centos-release-scl
RUN yum install httpd24-httpd rh-php73 rh-php73-php rh-php73-php-mbstring rh-php73-php-mysqlnd rh-php73-php-gd rh-php73-php-xml mariadb-server mariadb
RUN systemctl start mariadb
RUN mysql_secure_installation
ADD ./database.sql /docker-entrypoint-initdb/config.sql

ENV MYSQL_ROOT_PASSWORD=Passw0rd
ENV MYSQL_DATABASE=wikidatabase

EXPOSE 3306
