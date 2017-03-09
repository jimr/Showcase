clean:
	rm -rf build
	rm -rf dist
	rm -rf Showcase.egg-info

check:
	check-manifest --ignore dev-requirements.txt,Makefile
	python setup.py test

build: clean check
	python setup.py sdist bdist_wheel

publish: build
	twine upload dist/*
