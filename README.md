# postgres-docker
Postgresql and Anaconda3 with Docker (docker-compose)
Gives you a Postgresql dev sandbox on-the-go.

--------

## Postgresql container
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
----------

## Anaconda3 container
Container will be brought up with the above mentioned docker-compose up command.

#### First run
```shell
# Within anaconda3 container
/script/initconda.sh
conda activate py38
python /src/python/test.py
```
----------

#### Connect to container shell
```shell
make docker-ssh-conda
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
