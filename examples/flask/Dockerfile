FROM jeethu/pypy-uwsgi:2.5.1
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

ADD app.py /home/app/app.py

RUN set -e; \
    useradd -m -d /home/app -s /bin/bash app; \
    chown -R app:app /home/app

ADD supervisord.conf /etc/supervisor/conf.d/app.conf

EXPOSE 8080
