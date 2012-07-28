#!/bin/sh

df -h / | \
egrep /$ | \
awk -v splitter=/ \
    -v threshold=15% \
    -v warncolor=$tmux_warning \
    -v valuecolor=$tmux_value \
    '{
       if($5<threshold)
         warn=warncolor;
       print warn $4 valuecolor "/" $2
     }'
