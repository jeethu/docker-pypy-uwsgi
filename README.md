A Docker image for uWSGI 2.0.10 with PyPy 4.0.0
===============================================

A minimal Ubuntu 14.04 based docker image with PyPy 4.0.0, libpypy-c.so, uWSGI 2.0.11.2 and Supervisord.

Setup:
---

To build an Ubuntu 14.04.3 based image:
```
make pypy_uwsgi
```

To build the flask demo, run:
```
make flask_example
```

And finally, to build the bottle demo, run:
```
make bottle_example
```

The flask demo app
---

The example was stolen from the [quickstart page](http://uwsgi-docs.readthedocs.org/en/latest/WSGIquickstart.html#deploying-flask) in the uWSGI documentation.

Run with:
```
docker run -it --rm -p 80:80 jeethu/pypy-uwsgi:4.0.0-flask-demo
```

#### To test
If you're using docker-machine

```
curl -X GET -I "http://$(docker-machine ip default)/"
```

Otherwise:

```
curl -X GET -I http://localhost/
```


The bottle demo app
---

The same as the flask demo app, except that you run it thusly.

```
docker run -it --rm -p 80:80 jeethu/pypy-uwsgi:4.0.0-bottle-demo
```
