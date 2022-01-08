FROM centos:7

RUN yum -y install wget

RUN install -y centos-release-scl

RUN yum install -y httpd24-httpd rh-php73 rh-php73-php rh-php73-php-mbstring rh-php73-php-mysqlnd rh-php73-php-gd rh-php73-php-xml mariadb-server mariadb 

WORKDIR /opt/rh/httpd24/root/var/www

RUN useradd wiki && groupadd wiki

RUN wget https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.4.tar.gz && tar -zxf mediawiki-1.34.4.tar.gz && mv mediawiki-1.34.4 mediawiki

RUN sed -i -e 's|^DocumentRoot "/opt/rh/httpd24/root/var/www"|DocumentRoot "/opt/rh/httpd24/root/var/www/mediawiki"|' -e 's|    DirectoryIndex index.html|    DirectoryIndex index.html index.html.var index.php|' -e 's|^<Directory "/opt/rh/httpd24/root/var/www/html">|<Directory "/opt/rh/httpd24/root/var/www/html/mediawiki">|' /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf

RUN chown -R apache:apache /opt/rh/httpd24/root/var/www/mediawiki

RUN chmod 755 /opt/rh/httpd24/root/var/www/mediawiki/

RUN sed -i 's|^LoadModule http2_module modules/mod_http2.so|#LoadModule http2_module modules/mod_http2.so|' /opt/rh/httpd24/root/etc/httpd/conf.modules.d/00-base.conf

CMD /opt/rh/httpd24/root/usr/sbin/apachectl -DFOREGROUND
