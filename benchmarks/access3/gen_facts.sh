# include general utilities
. `dirname $BASH_SOURCE[0]`/../utils.sh
# destinguish benchmark sizes

case $SIZE in
    small)
        N=500          # number of entries
        C=10           # range of entries
        ;;
    medium)
        N=5000000      # number of entries
        C=100          # range of entries
        ;;
    large)
        N=50000000     # number of entries
        C=100          # range of entries
        ;;
    xlarge)
        N=500000000     # number of entries
        C=100          # range of entries
        ;;
esac


# create fact files as needed
#             | name | |entries| |       ranges        |
gen_fact_file   In      $N    $C $C $C $C $C $C $C
gen_fact_file     Tbl        $N    $C $C $C $C
