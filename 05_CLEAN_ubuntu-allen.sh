if [ `docker ps | grep 'ubuntu-allen' | wc -l` -gt 0 ]; then
  docker stop ubuntu-allen
fi
if [ `docker ps -a | grep 'ubuntu-allen' | wc -l` -gt 0 ]; then
  docker rm ubuntu-allen
fi
if [ `docker images | grep 'ubuntu-allen' | wc -l` -gt 0 ]; then
  docker rmi ubuntu-allen
fi

