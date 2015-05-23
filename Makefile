PYPY_VERSION = 2.5.1

all: pypy_uwsgi flask_example bottle_example

pypy_uwsgi:
	docker build -t jeethu/pypy-uwsgi:$(PYPY_VERSION) .

flask_example:
	docker build -t jeethu/pypy-uwsgi:$(PYPY_VERSION)-flask-demo -f examples/flask/Dockerfile examples/

bottle_example:
	docker build -t jeethu/pypy-uwsgi:$(PYPY_VERSION)-bottle-demo -f examples/bottle/Dockerfile examples/

clean:
	-docker rmi jeethu/pypy-uwsgi:$(PYPY_VERSION) jeethu/pypy-uwsgi:$(PYPY_VERSION)-flask-demo \
		jeethu/pypy-uwsgi:$(PYPY_VERSION)-bottle-demo
