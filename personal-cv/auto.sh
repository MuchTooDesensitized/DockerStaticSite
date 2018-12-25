#!/bin/bash
zip -r personal-cv.zip ./*
docker stop $1
docker rm $1
docker build -t alecazzam/profile-deux:$2 ..
docker run -itd --name $1 --publish 8080:80 alecazzam/profile-deux:$2 
exit 0
