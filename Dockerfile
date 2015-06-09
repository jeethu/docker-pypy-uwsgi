FROM jeethu/pypy:2.6.0
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

RUN set -e; \
    apt-get update; \
    apt-get -yq install wget supervisor build-essential; \
    cd /tmp/; \
    pip install uwsgi==2.0.10 uwsgitop==0.8; \
    ln -s /usr/local/pypy-2.6-linux_x86_64-portable/bin/uwsgi* /usr/local/bin/; \
    apt-get purge -yq wget; \
    apt-get -yq autoremove; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/bin/supervisord"]
