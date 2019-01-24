#!/bin/bash
. ~/.bashrc

PROC_CNT=$( ps -ef | grep node | grep "./dist" | grep -v grep | wc -l )

if [ $PROC_CNT -eq 0 ]; then
  /root/r2/sendSlack.sh "Stoped Arbitrage System!!"
  /root/r2/startR2.sh
fi

