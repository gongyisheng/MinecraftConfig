#!/bin/bash
#Xms=min_heap_size, Xmx=max_heap_size
cd /root/MC1.17
nohup java -Xms1024M -Xmx2048M -jar server.jar nogui >/root/MC1.17.log &
tail -f /root/MC1.17.log
