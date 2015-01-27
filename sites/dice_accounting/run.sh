docker run --rm -p $2:80 $1 -v matrix.config.ini:/web/matrix/matrix/config.ini -v rest.config.ini:/web/matrix/rest/config.ini
