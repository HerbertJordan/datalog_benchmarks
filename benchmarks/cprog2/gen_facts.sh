#!/bin/bash
. `dirname $BASH_SOURCE[0]`/../utils.sh

# destinguish benchmark sizes
case $SIZE in
    small)
        N=3221
        ;;
    medium)
        N=26128
        ;;
    large)
        N=72263
        ;;
    xlarge)
        N=50000000
        ;;
    custom)
        N=${N:=1000}
        echo "Custom problem size $N"     
        ;;
esac

LOW=0
MED=$N
HIGH=`expr $N \* 2`

# just seed fact files
mkdir -p facts
echo $LOW > facts/low.facts
echo $MED > facts/med.facts
echo $HIGH > facts/high.facts

