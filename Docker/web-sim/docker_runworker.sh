#!/usr/bin/env bash
containername="mccode/websim:1.1"

mkdir -p $HOME/McStas-dockers/sim-local
docker run -u docker -ti -v $HOME/McStas-dockers/sim:/home/docker/McWeb/mcsimrunner/sim/local --workdir="/home/docker/McWeb/mcsimrunner" $containername  ./manage.py runworker 
