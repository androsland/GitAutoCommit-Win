DUMMYFILE="androsland.txt"
tail -f $DUMMYFILE |
    while read -r line
    do
      IFS=';' read -ra array <<< "$line"
      commit_message="${array[0]}\\${array[1]} [${array[2]}]"
      printf "\n%s\n" "$commit_message"
      git add -A
      git commit -m "$commit_message"
   done
