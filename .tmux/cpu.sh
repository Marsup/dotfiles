#!/bin/sh

cat /proc/loadavg | \
awk -v warncolor=$tmux_warning \
    -v valuecolor=$tmux_value \
    -v cpucount=`grep 'model name' /proc/cpuinfo | wc -l` \
    'function colorize(value) {
       if(value > cpucount) return warncolor value valuecolor;
       else return value; 
     }
     {
       print colorize($1), colorize($2), colorize($3); 
     }'
