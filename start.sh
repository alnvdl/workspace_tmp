#!/bin/bash

sudo service postgresql start
sudo -u postgres createuser alnvdl
sudo -u postgres createdb alnvdl

sudo service redis-server start

