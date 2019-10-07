FROM php:7.0-apache

ADD php_src/*.php /var/www/html/

RUN mkdir /home/ctf
WORKDIR /home/ctf
ADD c_src/* /home/ctf/
RUN make

EXPOSE 80
