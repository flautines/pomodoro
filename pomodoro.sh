#!/bin/sh

countdown() {
  min=$1
  interval=1
  while [ $min -gt 0 ]
  do
    echo $min
    sleep "$interval"m
    min=$((min-"$interval"))
  done
}

bell() {
  ntimes=$2
  for i in $(seq "$ntimes" -1 1); do
    paplay $1
  done
}

if [ $# -gt 0 ]; then
  time=$1
else
  time=25
fi

if [ -n "$2" ]; then
  descanso=$2
else
  descanso=5
fi

descanso_sound=/usr/share/sounds/freedesktop/stereo/complete.oga
trabajo_sound=/usr/share/sounds/freedesktop/stereo/phone-incoming-call.oga

countdown $time

printf "\e[42mDESCANSO\e[0m\n"
bell $descanso_sound 3

countdown $descanso
printf "\e[41mSE ACABÓ EL DESCANSO\e[0m\n"
bell $trabajo_sound 2

exit 0
