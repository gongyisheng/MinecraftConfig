#!/bin/bash
cd /root/opt/MC1.17
nohup java -Xmx1024M -Xms1024M -jar server.jar nogui >/root/MC1.17.log &
tail -f /root/MC1.17.log
