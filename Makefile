check:
	python setup.py test
	check-manifest --ignore dev-requirements.txt

publish:
	python setup.py test sdist upload
