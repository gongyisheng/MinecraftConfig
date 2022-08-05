# NOTE: Make sure your EC2 instance have enough disk space for backup, 
# or you may get an error called "instances not in a valid state"
ls_date=`date +%Y_%m_%d`
ls_time=`date +%Y_%m_%d_%H_%M_%S`

tar -zcvf /root/${ls_date}.tar.gz /root/backup/
aws s3 cp /root/${ls_date}.tar.gz s3://minecraft-back-up/world/
rm /root/${ls_date}.tar
rm -r /root/backup
mkdir /root/backup