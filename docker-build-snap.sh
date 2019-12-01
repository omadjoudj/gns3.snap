#Docker image is core16 ie. Xenial only
#export DOCKER=snapcore/snapcraft:stable
#docker pull $DOCKER
export DOCKER='gns3.snap:latest'
docker build -t $DOCKER .
docker run -it -v "$PWD:$PWD" -w "$PWD" $DOCKER /bin/sh -c 'apt update && snapcraft clean && snapcraft'
