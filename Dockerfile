FROM alpine:3.1
MAINTAINER admin

RUN apk --update add bash nginx git php-fpm php-sqlite3 php-curl php-gd php-cli php-json && \
rm -rf /var/cache/apk/*

RUN echo "php-fpm && nginx && /bin/bash" >> /start.sh && \
chmod 755 /start.sh && \
mkdir -p "/tmp/nginx/client-body"

EXPOSE 80 443
VOLUME ["/var/www","/etc/php","/etc/nginx"]

# ENTRYPOINT ["/bin/bash","/start.sh"]
CMD ["/bin/bash","/start.sh"]
