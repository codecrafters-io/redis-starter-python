install:
	pip install --user pipenv
	pipenv install

test:
	pipenv run pytest tests

run_local_server:
	./spawn_redis_server.sh
