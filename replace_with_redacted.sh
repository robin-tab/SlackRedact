input_file=$1
for uid in james	tom.whitbrook	brett	stephen	joe.wapshott	marc.hernandez	074	075	076	077	078	079	; do

  cat $input_file | sed -e "s!$uid!REDACTED!" > ${input_file}.tmp
  mv ${input_file}.tmp $input_file

done
