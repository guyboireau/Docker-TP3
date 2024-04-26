
FROM wordpress:latest
CMD ["apache2 -D FOREGROUND"]

FROM mysql:latest
VOLUME /var/lib/mysql
CMD ["mysqld"]

FROM redis:latest
CMD ["redis-server"]

FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
