install:
	pip install --user pipenv
	pipenv install

test:
	pipenv run pytest tests
