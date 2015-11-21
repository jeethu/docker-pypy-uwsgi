FROM jeethu/pypy-uwsgi:4.0.1
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

ADD uwsgi.conf /home/app/uwsgi.conf
ADD supervisord.conf /etc/supervisor/conf.d/app.conf

ADD flask/app.py /home/app/app.py
ADD flask/requirements.txt /tmp/

RUN set -e; \
    useradd -u 1000 -m -d /home/app -s /bin/bash app; \
    chown -R app:app /home/app; \
    pip install -r /tmp/requirements.txt; \
    rm /tmp/requirements.txt

EXPOSE 80
