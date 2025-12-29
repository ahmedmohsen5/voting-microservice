#!/usr/bin/bash

cd result/
docker build -t $REPO/result:latest
cd ../vote 
docker build -t $REPO/vote:latest
cd ../worker
docker build -t $REPO/worker:latest
