FROM zanderbaldwin/ubuntu-base:15.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y \
    php5-cli \
    php5-curl \
    php5-gd \
    php5-igbinary \
    php5-intl \
    php5-json \
    php5-mcrypt \
    php5-mysqlnd \
    php5-redis \
    php5-xdebug \
    php5-xsl \
    php5-zmq
RUN ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/10-mcrypt.ini
RUN apt-get install -y nodejs npm
RUN apt-get install -y default-jre
RUN wget -O /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

CMD ["php", "-a"]
