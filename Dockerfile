FROM docker.io/arm64v8/amazonlinux:latest

EXPOSE 80

RUN yum install httpd -y

COPY index.html /var/www/html

CMD /usr/sbin/httpd -DFOREGROUND
