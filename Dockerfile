FROM alpine:latest

RUN apk update && apk add --no-cache postgresql-client rsync

COPY --chown=root:root ./start.sh /start
RUN chmod u+x /start

CMD ["/start"]