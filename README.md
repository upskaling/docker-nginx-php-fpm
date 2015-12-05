# docker-nginx-php-fpm
Nginx et PHP-FPM pour docker

build

```
docker build -t nginx nginx
```

run

```
docker run -d -p 80:80 -p 443:443 -v $HOME/nginx/www:/var/www -v $HOME/nginx/php-fpm:/etc/php -v $HOME/nginx/nginx-conf:/etc/nginx --name nginx nginx
```
