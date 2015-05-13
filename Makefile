PYPY_VERSION = 2.5.1

all: pypy_uwsgi flask_example

pypy_uwsgi:
	docker build -t jeethu/pypy-uwsgi:$(PYPY_VERSION) .

flask_example:
	docker build -t jeethu/pypy-uwsgi:$(PYPY_VERSION)-flask-demo examples/flask

clean:
	-docker rmi jeethu/pypy-uwsgi:$(PYPY_VERSION) jeethu/pypy-uwsgi:$(PYPY_VERSION)-flask-demo
