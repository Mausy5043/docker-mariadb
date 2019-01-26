# docker-mariadb

It is advised to clone the Git repository and build your own image from that, provided the latest build (see [Docker Hub](https://hub.docker.com/r/mausy5043/mariadb)) was successful.  
On GitHub: [https://github.com/Mausy5043/docker-mariadb](https://github.com/Mausy5043/docker-mariadb) DEPRECATED  
On GitLab: [https://gitlab.com/mausy5043-docker/mariadb](https://gitlab.com/mausy5043-docker/mariadb) ACTIVE  

## Installing
The preferred procedure is:
```
git clone https://github.com/Mausy5043/docker-mariadb
cd docker-mariadb
```
Review the default settings in `config\*.conf`.

```
./build.sh local
./run.sh local
```

This assumes that the host has at least the folder `/srv/array1/mysql` available which is the base directory where all databases are stored by mariadb. Adjust the  `config\*.conf` file and `run.sh` if you want to use another directory.


## Build a fresh image

```
./build.sh local
```
This builds the image with tag `local`


## Run the image

```
./run.sh local
```
This runs a container using the image tagged `local`
It uses a custom `.conf` that is kept in `${HOME}/.config/docker/*.conf`.


## Stop a running container

```
./stop.sh
```
Stops the container and then deletes it. This allows for immediately running a container with the same name without the need to `docker rm` it manually.


## Updating
FIRST!! Make a backup copy of  `config\*.conf` and `run.sh` for your own mental health.

```
./update.sh [--all]
```
This force-pulls the files from Git. Use the `--all` switch to rebuild the image and restart the container immediately.
Be aware that this will overwrite any changes you may have made to the default configuration stored in `config\*.conf`!

DISCLAIMER:
Use this software at your own risk! We take no responsibility for ANY data loss.
We guarantee no fitness for any use specific or otherwise.
