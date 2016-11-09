
# include general utilities
. `dirname $BASH_SOURCE[0]`/../utils.sh

# destinguish benchmark sizes
case $SIZE in
    small)
        N=179
        ;;
    medium)
        N=1000000
        ;;
    large)
        N=3000000
        ;;
    xlarge)
        N=50000000
        ;;
    custom)
        N=${N:=1000}
        echo "Custom problem size $N"     
        ;;
esac

N=`expr $N \* 1000`
E=`expr $N \* 10`

# create fact files as needed
#             | name | |entries| |       ranges        |
gen_fact_file      A         $N         $E   $E

