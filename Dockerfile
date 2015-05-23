FROM jeethu/pypy:2.5.1
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

RUN set -e; \
    apt-get update; \
    apt-get -yq install wget supervisor build-essential; \
    cd /tmp/; \
    wget --no-check-certificate -q https://bitbucket.org/pypy/pypy/downloads/pypy-2.5.1-linux64.tar.bz2; \
    tar jxf pypy-2.5.1-linux64.tar.bz2; \
    cp /tmp/pypy-2.5.1-linux64/bin/libpypy-c.so /usr/lib/x86_64-linux-gnu/; \
    ldconfig; \
    pip install uwsgi==2.0.10 uwsgitop==0.8; \
    apt-get purge -yq wget; \
    apt-get -yq autoremove; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/bin/supervisord"]
