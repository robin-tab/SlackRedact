input_file=$1
for uid in text-to-search-for	; do

  cat $input_file | sed -e "s!$uid!REDACTED!" > ${input_file}.tmp
  mv ${input_file}.tmp $input_file

done
