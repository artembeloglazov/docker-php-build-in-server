# Docker-php-build-in-server

Usage:

```
docker run --name pbi-web-server -d -p :80 artembeloglazov/php-build-in-server:latest
```

To view the port enter this:

```
docker ps
```

The port is highlighted in the screenshot in red square

![Get the port of web-server](https://github.com/artembeloglazov/docker-php-build-in-server/raw/master/port.png)

Open in browser: http://localhost:PORT

You could enter custom port:

```
docker run --name pbi-web-server -d -p 32333:80 artembeloglazov/php-build-in-server:latest
```

Open in browser: http://localhost:32333


Mounting /path/to/dir/:

```
docker run --name pbi-web-server -d -p :80 -v /path/to/dir/:/var/www/ artembeloglazov/php-build-in-server:latest
```