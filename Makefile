current_stage := 0

install:
	pipenv install

test:
	pipenv run pytest tests

submit:
	git add .
	git commit -m "Changes"
	git push origin master
