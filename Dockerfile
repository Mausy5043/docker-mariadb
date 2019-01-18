FROM mariadb:latest
MAINTAINER Mausy5043

RUN apt-get -qqy update    \
 && apt-get -qqy autoclean  \
 && apt-get -qqy autoremove  \
 && apt-get -qqyV upgrade     \
 && apt-get install -qqy mytop \
                         tzdata \
                         locales

ENV TZ=Europe/Amsterdam

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
 && echo $TZ > /etc/timezone

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen

