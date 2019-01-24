#!/bin/bash
. ~/.bashrc

cd /root/r2
ln -nfs config.json.real config.json
nohup npm start > /dev/null &

