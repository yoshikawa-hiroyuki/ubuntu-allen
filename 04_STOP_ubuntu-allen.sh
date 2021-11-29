if [ `docker ps | grep 'ubuntu-allen' | wc -l` -lt 1 ]; then
  echo ubuntu-allen is not running, exit.
  exit 1
fi
docker stop ubuntu-allen

