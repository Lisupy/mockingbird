docker-compose -f ./docker-compose.yml up -d
docker exec -it dev_env /bin/bash
docker-compose -f ./docker-compose.yml stop
