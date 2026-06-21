.PHONY: deps lint test run docker_build

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

test:
	python -m unittest discover -s test

run:
	python -m flask --app hello_world run

docker_build:
	docker build -t hello-world-printer .
