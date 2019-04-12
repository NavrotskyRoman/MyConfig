#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 2; done

# Launch bar1 and bar2
#polybar default -r &
#polybar down -r &
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload default &
    MONITOR=$m polybar --reload down &
  done
else
  polybar --reload default &
  polybar --reload down &
fi


echo "Bars launched..."
