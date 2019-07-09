#!/bin/sh

if [ ! -e /opt/jedox/ps/jedox-suite.sh ]; then
  curl http://cdn.jedox.com/wp-content/downloads/software/2019/1/Jedox_2019_1_lin.tar --verbose | \
  tar x -C /tmp/
  cd /tmp
  ./install.sh --automatic
  rm -rfv /tmp
fi

cd /opt/jedox/ps
./jedox-suite.sh start
