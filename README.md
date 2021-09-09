# sidecar
Simple example of usage named pipes between docker containers. This solution allows to make multiple log streams from single container (e.g. from nginx,php-fpm and your php app).

Just make docker-compose up to bring them up

Console output like this indicates that our simple app is writing logs to named pipe and logger app on another end of pipe (sidecar) is receiving logs and writing it to container's stdout.

````
holodilov@parallels-ubuntu:~/namedpipes$ docker-compose up
Starting logger ... done
Starting app    ... done
Attaching to app, logger
logger     | current date is Thu Sep  9 15:32:51 UTC 2021
logger     | current date is Thu Sep  9 15:32:52 UTC 2021
logger     | current date is Thu Sep  9 15:32:53 UTC 2021
logger     | current date is Thu Sep  9 15:32:54 UTC 2021
logger     | current date is Thu Sep  9 15:32:55 UTC 2021
logger     | current date is Thu Sep  9 15:32:56 UTC 2021
````
