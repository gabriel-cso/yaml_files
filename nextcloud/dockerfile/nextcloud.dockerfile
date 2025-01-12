FROM docker.io/nextcloud:latest
RUN apt-get update\ 
&& apt-get -y install smbclient libsmbclient-dev \
&& pecl install smbclient \
&& docker-php-ext-enable smbclient
