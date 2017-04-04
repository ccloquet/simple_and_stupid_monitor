export fname=$(date +"%Y%m%d")
vmstat -t 5 10 | tail -n5 > $fname.txt
while true; do
   ./parseout.sh $fname
   vmstat -t 5 10 | tail -n5 >> $fname.txt
done
