FROM trafex/alpine-nginx-php7
WORKDIR /var/www/html
USER root
RUN rm -rf /var/www/html/*
USER nobody
COPY --chown=nobody wordpress/ /var/www/html/
RUN find /var/www/html -type d -exec chmod 755 {} \;
RUN find /var/www/html -type f -exec chmod 644 {} \;
EXPOSE 8080

