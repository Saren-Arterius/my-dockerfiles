FROM trafex/alpine-nginx-php7

RUN rm -rf /var/www/html
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

RUN apk update && \
    apk upgrade && \
    apk add git
RUN git clone https://github.com/tobychui/Q-9-Online.git /var/www/html
