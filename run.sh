#!/bin/bash
docker compose build

xhost +local:*

docker compose up

xhost -local:*

