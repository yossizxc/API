#!/bin/bash
TAG=$1

check_result() {
  RESULT=$?
  MESSAGE=$1
  if [ $RESULT == 0 ]; then
    echo [SUCCESS] $MESSAGE
  else
    echo [FAIL] $MESSAGE
    exit 1
  fi
}

list=['israel','london','new york']

for city in list;do
  sudo docker run $TAG -c city | grep weather
  check_result city
done

exit 0