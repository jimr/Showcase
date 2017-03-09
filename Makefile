.PHONY: clean check test build publish

clean:
	rm -rf build
	rm -rf dist
	rm -rf Showcase.egg-info

check:
	check-manifest --ignore dev-requirements.txt,Makefile
	flake8 --exclude build --ignore H301

test:
	python setup.py test

build: clean check test
	python setup.py sdist bdist_wheel

publish: build
	twine upload dist/*
