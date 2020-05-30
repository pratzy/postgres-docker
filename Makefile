docker-ssh:
	docker exec -it postgres-10 /bin/bash

docker-psql:
	docker exec -it postgres-10 psql -U docker -d sandbox


