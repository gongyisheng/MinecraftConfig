ls_date=`date +%Y_%m_%d`
ls_time=`date +%Y_%m_%d_%H_%M_%S`

tar -zcvf /root/${ls_date}.tar.gz /root/MC1.17/backup
aws s3 cp /root/${ls_date}.tar.gz s3://minecraft-back-up/world/
rm /root/${ls_date}.tar
rm -r /root/backup
mkdir /root/backup