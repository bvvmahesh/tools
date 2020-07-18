#!/bin/bash 

URL=$(curl https://releases.hashicorp.com/terraform/0.12.26/ | grep linux_amd64.zip | awk -F \" '{print $2}')
FILE=$(echo $URL | awk -F / '{print $NF}')
curl -s -L -J -O $URL 
sudo yum install unzip -y 
unzip $FILE -d /bin
if [ $? -eq 0 ]; then 
  echo -e "\e[31m SUCCESS\e[0m"
fi 
