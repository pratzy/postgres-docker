# postgres-docker
Postgresql with Docker

#### First run
```shell
docker-compose up -d
make docker-ssh
/scripts/initdb.sh  # within docker container
exit
```

#### Connect from host
```shell
psql -h localhost -d sandbox -U docker -p 5432
```

#### Shutdown container
```shell
# On host
docker-compose stop
```

#### Start up existing container
```shell
# On host
docker-compose start
```
