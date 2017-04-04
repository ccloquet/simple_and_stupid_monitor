cat $1.txt | sed 's/ \+/,/g' | awk -F',' ' 20 {print $19" "$20 $0}'  > $1.csv
for i in $(seq 1 5)
    do
        cat $1.csv | awk -v col="$i" -F',' ' 20 {print $1","$col}'  > $1_$i.csv
    done

