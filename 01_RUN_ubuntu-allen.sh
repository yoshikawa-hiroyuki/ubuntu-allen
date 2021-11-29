if [ ! -e "$(pwd)"/prj ]; then
  mkdir prj
fi
if [ `docker ps -a | grep 'ubuntu-allen' | wc -l` -lt 1 ]; then
  docker run -dt -p 8888:8888 \
	--mount type=bind,source="$(pwd)"/prj,target=/home/user/prj \
	--name ubuntu-allen \
	ubuntu-allen
fi

if [ `uname` == Darwin ]; then
  ipadr=localhost
else
  ipadr=`hostname -I | awk '{print $1}'`
fi
echo "=== ${ipadr} ==="

