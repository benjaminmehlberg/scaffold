all: install lint test

install:
	pip install --upgrade pip && pip install -r requirements.txt

format:
	black *.py

lint:
	python3 -m pylint --disable=R,C --fail-under=9 hello.py

test:
	python3 -m pytest -vv --cov=hello test_hello.py

