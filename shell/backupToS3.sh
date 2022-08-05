ls_date=`date +%Y_%m_%d`
ls_time=`date +%Y_%m_%d_%H_%M_%S`

tar -zcvf /root/backup/${ls_time}.tar.gz /root/MC1.17/
aws s3 cp /root/backup/${ls_time}.tar.gz s3://minecraft-back-up/world/${ls_date}/${ls_time}.tar.gz
rm /root/backup/${ls_time}.tar.gz