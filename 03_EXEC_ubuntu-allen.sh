if [ `docker ps | grep 'ubuntu-allen' | wc -l` -lt 1 ]; then
  echo ubuntu-allen is not running, start ubuntu-allen before exec.
  exit 1
fi
docker exec -it -u user ubuntu-allen bash -l

