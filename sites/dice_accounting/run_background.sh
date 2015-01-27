docker run --name $3 -d -p $2:80 -v $PWD/matrix.config.ini:/web/matrix/matrix/config.ini -v $PWD/rest.config.ini:/web/matrix/rest/config.ini -v $PWD/redis.ini:/etc/php.d/redis.ini $1
