#!/bin/bash
## Tested & meant to run on a ubuntu 18.04
sudo apt-get update
sudo apt-get install sqlite3 -y
sqlite3 app_b/database.db < app_b/schema.sql
docker-compose down
docker-compose rm -f
docker-compose build
docker-compose up -d
