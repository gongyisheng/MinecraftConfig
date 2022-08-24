rollback_date=$1
rollback_name=$2

pkill -9 java
rm -r /root/MC1.17
aws s3 cp s3://minecraft-back-up/world/${rollback_date}/${rollback_name} /root/rollback/${rollback_name}
tar -zxvf /root/rollback/${rollback_name} /root/MC1.17/