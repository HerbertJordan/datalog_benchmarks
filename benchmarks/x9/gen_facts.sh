
# include general utilities
. `dirname $BASH_SOURCE[0]`/../utils.sh

# destinguish benchmark sizes
case $SIZE in
    small)
        N=5000          # number of entries
        C=100           # range of entries
        ;;
    medium)
        N=50000      # number of entries
        C=100          # range of entries
        ;;
    large)
        N=500000     # number of entries
        C=100          # range of entries
        ;;
    xlarge)
        N=5000000     # number of entries
        C=100          # range of entries
        ;;
esac

echo $N
echo $C

# create fact files as needed
#             | name | |entries| |       ranges        |
gen_fact_file   X      $N    $C $C
