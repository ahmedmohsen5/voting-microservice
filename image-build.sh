#!/usr/bin/bash

cd result/
docker build -t "$REPO"/results-app:latest .
cd ../vote 
docker build -t "$REPO"/voting-app:latest .
cd ../worker
docker build -t "$REPO"/worker-app:latest .