.PHONY: venv install install-test test lint requirements clean

venv:
	virtualenv venv --python=python2.7
	. venv/bin/activate && pip install pip==8.1.1  # Pin pip to pip-tools required version

install:
	pip install -r requirements.txt

install-test:
	pip install -r requirements-test.txt

#install:
#	pip install -r requirements/base.txt

#install-test:
#	pip install -r #requirements/test.txt

test:
	python manage.py test polls --settings=mysite.test

coverage:
	coverage run manage.py test polls --settings=mysite.test

lint:
	flake8 polls

requirements:
	$(MAKE) -C requirements

clean:
	find . -name '*.pyc' -delete
