# docker-mariadb-galera
MySQL MariaDB with Galera support

#### Build status:
[![Build Status](https://img.shields.io/docker/cloud/automated/andreaskasper/mariadb-galera.svg)](https://hub.docker.com/r/andreaskasper/mariadb-galera)

#### Bugs & Issues:
![Github Issues](https://img.shields.io/github/issues/andreaskasper/docker-mariadb-galera.svg)
![Code Languages](https://img.shields.io/github/languages/top/andreaskasper/docker-mariadb-galera.svg)

#### run the container
```
docker run \
    -- name=node1 \
    --env GALERA_PRIMARY=true \
    -p 3306:3306 \
    -p 4444:4444 \
    -p 4567:4567 \
    -p 4568:4568 \
    andreaskasper/mariadb-galera

docker run \
    -- name=node2 \
    -p 3306:3306 \
    -p 4444:4444 \
    -p 4567:4567 \
    -p 4568:4568 \
    andreaskasper/mariadb-galera
```

#### Environment Parameters
| Parameter     | Description   |
| ------------- |:-------------:|
| GALERA_PRIMARY | start the first node for the cluster |


#### Folders:
| Folder        | Description   |
| ------------- |:-------------:|
