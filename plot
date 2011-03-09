#!/bin/bash

#  This file is part of Datatools.
#  
#  Datatools is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#  
#  Datatools is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with Datatools.  If not, see <http://www.gnu.org/licenses/>.


PRECMD=''
LINCMD='w lp pt 6'
while getopts "c:l:" flag
do
    case "$flag"  in
        c) PRECMD=$OPTARG;;
        l) LINCMD=$OPTARG;;
      [?]) echo "bad commandline flags" & exit;;
    esac
done

cat /dev/stdin > file.tmp

gnuplot << EOF
set term x11 enhanced persist
unset key

$PRECMD
plot 'file.tmp' using 1:2 $LINCMD
EOF

rm -f file.tmp