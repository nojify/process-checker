#!/bin/sh
#
# Prevents ability to run this script with more than 1 process
#

n=`basename "$0"`
echo "Process Start - $n"

# ------------------------------------------
# Check if a process for this script is already running

ps -ef | grep "/bin/sh" | grep $n | grep -v $$
if [ $? -eq 0 ]; then
  echo "Process already running"
  exit 0
fi

# ------------------------------------------ 

sleep 40
echo "Done"
