#!/bin/bash
. ~/.bashrc

cd /root/r2
ln -nfs config.json.all.demo config.json
nohup npm start > /dev/null &

