#!/bin/bash
## test
date=$(date +"%d-%m-%Y")
sqlpass='bolest87' # mysql password 
megabinary='/nice/megaput' # where you have copyed megaput binary
megauser=sample@gmail.com # mega account username
megapass=samplepass # mega account password
megafolder='Backups' # folder in Mega where you send backup (you have to create folder if not exist in mega storage)
filename=autobackup  # filename for backup

libcurlexist(){
if dpkg -l | grep libcurl3 > /dev/null 2>&1 ; then
    echo ""
	else
	echo "installing libcurl3"
    apt-get -y --force-yes install libcurl3 > /dev/null 2>&1 
	fi
	}


backup(){
mysqldump -u root -p$sqlpass db_login > /nice/backup/$date-$filename.sql 2>/dev/null
$megabinary --path /Root/$megafolder -u $megauser -p $megapass /nice/$date-$filename.sql.gz 2>/dev/null
     }
	 
libcurlexist
backup

exit
##