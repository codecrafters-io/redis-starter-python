current_stage := 0

download_tester_linux:
	rm -rf tester
	wget "https://s3.ap-south-1.amazonaws.com/paul-redis-challenge/linux.tar.gz"
	mkdir tester
	tar -xvf linux.tar.gz -C tester
	rm -rf linux.tar.gz

download_tester_mac:
	rm -rf tester
	wget "https://s3.ap-south-1.amazonaws.com/paul-redis-challenge/darwin.tar.gz"
	mkdir tester
	tar -xvf darwin.tar.gz -C tester
	rm -rf darwin.tar.gz

test:
	echo ""
	./tester/redis-challenge-tester --stage $(current_stage) --binary-path=./spawn_redis_server.sh

test_debug:
	./tester/redis-challenge-tester --stage $(current_stage) --binary-path=./spawn_redis_server.sh --debug

test_and_report:
	./tester/redis-challenge-tester --stage $(current_stage) --binary-path=./spawn_redis_server.sh --report --api-key=$$REDIS_CHALLENGE_API_KEY
