#!/bin/sh

PORT=17840 
while [ 1 ]
do
/usr/bin/nc -l $PORT > /tmp/tmp.jpg
FILENAME=`date +%Y%m%d_%H%M%S`
/bin/cp /tmp/tmp.jpg /data/homemonitor_pic/$FILENAME.jpg
done
