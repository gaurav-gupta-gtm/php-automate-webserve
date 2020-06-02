FROM centos:7

RUN yum install net-tools -y
RUN yum install php -y
RUN yum install httpd -y
COPY *.php /var/www/html
COPY *.html /var/www/html

CMD /usr/sbin/httpd -DFOREGROUND
EXPOSE 80
