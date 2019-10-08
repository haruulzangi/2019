    FROM ubuntu:16.04
     
    # Apache ENVs
    ENV APACHE_RUN_USER www-data
    ENV APACHE_RUN_GROUP www-data
    ENV APACHE_LOCK_DIR /var/lock/apache2
    ENV APACHE_LOG_DIR /var/log/apache2
    ENV APACHE_PID_FILE /var/run/apache2/apache2.pid
    ENV APACHE_SERVER_NAME localhost
     
    # Install services, packages and do cleanup
    RUN apt-get update \
     && apt-get install -y \
        apache2 \
	php \
	libapache2-mod-php \
     && rm -rf /var/lib/apt/lists/* 
    COPY flag /flag.txt 
    # Copy files
    COPY apache-conf /etc/apache2/apache2.conf
    COPY public_html /var/www/html/ 
    RUN chown -R www-data:www-data /var/www/html/uploads/
    # Expose Apache
    EXPOSE 80
     
    # Launch Apache
    CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
