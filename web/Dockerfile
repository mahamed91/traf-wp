FROM trafex/alpine-nginx-php7
WORKDIR /var/www/html
RUN rm -rf /var/www/html/*
USER nobody
COPY --chown=nobody wordpress/ /var/www/html/
EXPOSE 8080

