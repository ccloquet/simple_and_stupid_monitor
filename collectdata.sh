export fname=$(date +"%Y%m%d")
vmstat -t 5 10 > $fname.txt
./parseout.sh $fname
while true; do
   vmstat -t 5 10 >> $fname.txt
   ./parseout.sh $fname
done
