#!/bin/bash -x

#1. cd into projet folder
cd ~/project-placeholder

#2. Run for the latests changes
git fetch --all && git reset origin/main

#3. Spin containers down to prevent out of memory issues
docker compose -f docker-compose.prod.yml down

docker compose -f docker-compose.prod.yml up -d --build
