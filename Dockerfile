FROM alpine:latest

RUN apk update && apk add --no-cache postgresql-client

COPY --chown=root:root --chmod=770 ./start.sh /start

CMD ["/start"]