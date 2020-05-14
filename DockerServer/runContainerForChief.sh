#!/usr/bin/bash

#Script by Aryan Wadhavekar

docker build . -t mywebserver
docker run -itd -p 127.0.0.1:3333:80 mywebserver
