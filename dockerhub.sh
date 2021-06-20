#!/bin/sh


docker login
docker build --rm -t thienpow/pgdumper .
docker push thienpow/pgdumper