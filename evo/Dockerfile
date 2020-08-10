FROM php:7.4-cli
RUN php -m

RUN apt update && \
    apt install -y git libxml2-dev libpng-dev libonig-dev libcurl4-openssl-dev zip unzip wait-for-it


RUN docker-php-ext-install gd mysqli
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /evosc
RUN git clone https://github.com/EvoTM/EvoSC.git . && \
    composer install

COPY evo.sh ./evo.sh

CMD [ "./evo.sh" ]