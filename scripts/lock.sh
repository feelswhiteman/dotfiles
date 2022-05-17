#!/bin/sh

# Dracula theme
BACKGROUND='#21222c'
PRIMARY='#bd93f9'
ALTERNATE='#6272a4'
FOREGROUND='#ffffff'
URGENT='#ff5555'
GREEN='#50fa7b'

sleep 0.16

i3lock \
--inside-color=$BACKGROUND        \
--ring-color=$ALTERNATE           \
--line-color=$BACKGROUND          \
--separator-color=$ALTERNATE      \
\
--insidever-color=$BACKGROUND     \
--ringver-color=$PRIMARY          \
\
--insidewrong-color=$BACKGROUND   \
--ringwrong-color=$URGENT         \
\
--verif-color=$FOREGROUND         \
--wrong-color=$FOREGROUND         \
--time-color=$FOREGROUND          \
--date-color=$FOREGROUND          \
--layout-color=$FOREGROUND        \
--keyhl-color=$GREEN              \
--bshl-color=$URGENT              \
\
--screen 1                        \
--blur 5                          \
--clock                           \
--indicator                       \
--time-str="%H:%M:%S"             \
--date-str="%A, %d.%m.%Y"         \
