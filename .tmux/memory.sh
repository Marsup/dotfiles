#!/bin/sh

free -m | \
egrep ^Mem: | \
awk -v threshold=20 \
    -v warncolor=$tmux_warning \
    -v valuecolor=$tmux_value \
    '{
       free = $4+$6+$7;
       total=$2;
       if(free/total*100 < threshold)
         warn=warncolor;
       print warn total-free valuecolor "/" $2 "MB"
     }'
