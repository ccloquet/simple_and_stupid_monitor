find ./*.csv -mtime +7 -exec rm {} \;
find ./*.txt -mtime +7 -exec rm {} \;
export fname=$(date +"%Y%m%d")
while true; do
    vmstat -t 5 10 | tail -n5 >> $fname.txt
   ./parseout.sh $fname
done
