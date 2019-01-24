#!/bin/bash
. ~/.bashrc

LOG_FILE=/root/r2/logs/info.log
if [ -f $LOG_FILE ]; then
  mv $LOG_FILE $LOG_FILE.`date "+%Y%m%d%H%M%S"` && gzip $LOG_FILE.`date "+%Y%m%d%H%M%S"`
fi

LOG_FILE=/root/r2/logs/debug.log
if [ -f $LOG_FILE ]; then
  mv $LOG_FILE $LOG_FILE.`date "+%Y%m%d%H%M%S"` && gzip $LOG_FILE.`date "+%Y%m%d%H%M%S"`
fi
