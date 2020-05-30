# postgres-docker
Postgresql with Docker (docker-compose)
Gives you a Postgresql dev sandbox on-the-go.

#### First run
```shell
docker-compose up -d
make docker-ssh
/scripts/initdb.sh  # within docker container
exit
```

#### Connect to psql shell
```shell
make docker-psql
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

------

## Pre-requisites
* Host must have docker and docker-compose installed. 
* Tested on MacOS and Debian (Ubuntu/PopOS).
