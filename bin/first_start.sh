#!/bin/bash

docker-compose exec app composer install

echo "CAMBIANDO PERMISOS: ...."

docker-compose exec app chmod 777 ./web/assets -R

docker-compose exec app chmod 777 ./runtime -R

echo "PERMISOS MODIFICADOS!"