A Docker image for uWSGI 2.0.10 with PyPy 2.5.1
===============================================

A minimal Ubuntu 14.04 based docker image with PyPy 2.5.1, libpypy-c.so, uWSGI 2.0.10 and Supervisord.

Setup:
---

To build an Ubuntu 14.04 based image:
```
make pypy_uwsgi
```

To build the flask demo, run:
```
make flask_example
```

The flask demo app
---

The example was stolen from the [quickstart page](http://uwsgi-docs.readthedocs.org/en/latest/WSGIquickstart.html#deploying-flask) in the uWSGI documentation.

Run with:
```
docker run -it --rm -p 8080:8080 jeethu/pypy-uwsgi:2.5.1-flask-demo
```

#### To test
If you're using boot2docker

```
curl -X GET -I "http://$(boot2docker ip):8080/"
```

Otherwise:

```
curl -X GET -I http://localhost:8080/
```
