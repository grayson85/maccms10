FROM php:7-alpine

COPY . /opt
VOLUME /data

RUN apk add --no-cache zip libzip-dev libpng-dev libjpeg-turbo-dev freetype-dev --update mysql mysql-client && \
    rm -f /var/cache/apk/* && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-configure zip && \
    docker-php-ext-install zip gd pdo_mysql && \
    chmod +x /opt/startPHP && \
    chmod -R 755 /opt/maccms10 && \
    mkdir -p /run/mysqld && \
    mkdir /opt/data && \
    mv /opt/startPHP /bin && \
    mv /opt/my.cnf /etc/my.cnf && \
    rm /etc/my.cnf.d/mariadb-server.cnf && \
    rm -rf /var/lib/mysql && \
    mv /opt/mysql.zip /opt/data/ && \
    unzip /opt/data/mysql.zip -d /opt/data/ && \
    chown -R root:mysql /opt/data/mysql && \
    mv /opt/maccms10/upload /opt/data && \
    ln -s /data/upload /opt/maccms10/upload && \
    mv /opt/maccms10/application/extra /opt/data && \
    ln -s /data/extra /opt/maccms10/application/extra && \
    mv /opt/maccms10/static/player /opt/data && \
    ln -s /data/player /opt/maccms10/static/player

WORKDIR /opt/maccms10
EXPOSE 7878 

CMD [ "startPHP" ]
