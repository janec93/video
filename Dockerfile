FROM alpine

RUN apk update \
     && apk add lighttpd \
     && rm -rf /var/cache/apk/*

COPY ./index.html /var/www/localhost/htdocs
COPY ./video.mp4 /var/www/localhost/htdocs
CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]
