#!/bin/bash

# stop the container
docker stop mariadb
# throw the container away so we can re-start it
docker rm mariadb
