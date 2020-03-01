#!/bin/sh
#
# Prevents ability to run this script with more than 1 process
#

n=`basename "$0"`
echo "Process Start - $n"

# ------------------------------------------
# Check if a process for this script is already running

ps -ef | grep "/bin/sh" | grep $n | grep -v $$ | grep -v "/bin/sh -c"
if [ $? -eq 0 ]; then
  echo "Process already running"
  exit 0
fi

# ------------------------------------------ 

sleep 65
echo "Done"
