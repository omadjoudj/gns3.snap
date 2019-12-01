#Docker image is core16 ie. Xenial only
#export DOCKER_IMG=snapcore/snapcraft:stable
#docker pull $DOCKER_IMG
export DOCKER_IMG='gns3.snap:latest'
docker build -t $DOCKER_IMG .
docker run -it -v "$PWD:$PWD" -w "$PWD" $DOCKER_IMG /bin/sh -c 'apt update && snapcraft clean && snapcraft'
