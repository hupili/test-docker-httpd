#!/bin/bash

docker run -dit \
	--name my-apache-app \
	-p 8080:80 \
	-v "$PWD/public_html":/usr/local/apache2/htdocs/ \
	-v "$PWD/conf":/usr/local/apache2/conf/ \
	httpd
