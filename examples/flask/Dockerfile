FROM jeethu/pypy-uwsgi:2.5.1
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

ADD app.py /home/app/app.py
ADD uwsgi.conf /home/app/uwsgi.conf
ADD supervisord.conf /etc/supervisor/conf.d/app.conf

RUN set -e; \
    useradd -u 1000 -m -d /home/app -s /bin/bash app; \
    chown -R app:app /home/app

EXPOSE 80
