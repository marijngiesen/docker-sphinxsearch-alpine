FROM alpine:3.3

MAINTAINER Marijn Giesen <marijn@studio-donder.nl>

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ sphinx

EXPOSE 9306 9312
VOLUME /var/lib/sphinx /etc/sphinx

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["searchd", "--nodetach"]
