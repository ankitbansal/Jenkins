FROM ruby:2.4.5-jessie
ENV APP_HOME=/u01/app
WORKDIR /u01/app
EXPOSE 8080
RUN mkdir -p /u01/app/ \
    && mkdir -p /u01/data/ \
    && mkdir -p /u01/logs/ \
    && groupadd apaas \
    && groupadd builds \
    && useradd -m -b /home -g apaas -G builds apaas \
    && chown -R apaas:apaas /u01/ \
    && chgrp -hR builds /usr/local

ADD appcontent/ /u01/app
USER apaas
