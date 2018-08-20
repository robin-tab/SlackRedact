target_dir=/Users/robin/target

total=`find $target_dir -name '*.json' | wc -l`
now=0

for file in `find $target_dir -name '*.json'`; do
  now=`echo "$now + 1" | bc`
echo $now "/ $total"
  ./replace_with_redacted.sh $file

done
echo FINISHED
