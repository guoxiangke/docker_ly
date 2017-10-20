#! /bin/bash
pwd
git pull
git push
ssh root@bce.yongbuzhixi.com<< EOF
cd ~/docker/docker_ly_player && git pull 
docker-compose -p ly -f ./docker-compose.yml up -d  --build --remove-orphans --force-recreate
EOF
