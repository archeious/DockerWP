FROM wordpress:latest
MAINTAINER Garth Mortensen

RUN apt-get update && apt-get install -y vim less wget ncurses-term zsh
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY includes/ /root/
