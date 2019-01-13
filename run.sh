#!/bin/bash

tag="$1"

# Find out where we're running from
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f Dockerfile ]; then
  echo "Not allowed. First execute:"
  echo "cd ${SCRIPT_DIR}"
  echo " Then try again."
  exit 1
fi

docker run -d \
           --restart unless-stopped \
           -v "${PWD}/config/etc_syslog-ng_conf.d_remote.conf":/etc/syslog-ng/conf.d/remote.conf \
           -v /srv/array1/mysql:/var/lib/mysql \
           -p 3306:3306 \
           --name mariadb \
           -h mariadb \
           "mausy5043/mariadb-server:${tag}"
