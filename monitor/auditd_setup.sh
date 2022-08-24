# sudo yum install audit

# start auditd process
service auditd start & service auditd status

# set up rules
auditctl -a exit,always -F arch=b64 -S kill

# search for killed process
# ausearch -sc kill