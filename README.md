# docker-ibus-build
Docker image for building ibus package for Ubuntu
iBus package => 1.5.11 is required for running Intellij 15 on Ubuntu
I left like making a docker image for building your own package just for fun with Docker

# How-to

1. download docker image file
2. build docker image: docker build -t ubuntu-build .
3. make sure image is built: docker images
4. ssh into image: docker run -t -i ubuntu-build /bin/bash
5. download ibus somewhere: wget https://github.com/ibus/ibus/releases/download/1.5.11/ibus-1.5.11.tar.gz
6. unpack it
7. run configure and make: ./configure && make
8. run checkinstall for creating a package
9. copy created package to host from another terminal (DONT EXIT THE CURRENT ONE):
  docker cp [DOCKER_PROCESS_ID]:[SOURCE_FOLDER]/ibus_1.5.11-1_amd64.deb [LOCAL_DESTINATION_FOLDER]
10. install package and you are done
