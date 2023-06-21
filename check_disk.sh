
#!/bin/bash
THRESHOLD=10
EMAIL=pramodsingh500@gmail.com
#PART=yourdiskpart
PART=/boot
USE=`df -h |grep $PART | awk '{ print $5 }' | cut -d'%' -f1`
if [ $USE $THRESHOLD ];
then
  echo "Percent Used: $USE" | email -s "Disk Usage Rate " -r bpramod005@gmail.com $EMAIL
fi
