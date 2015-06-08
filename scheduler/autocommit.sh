DIR='/path/to/repository'
DUMMYFILE='dummyfile.txt'
tail -f $DIR/$DUMMYFILE |
    while read -r line
    do
  		IFS=';' read -ra array <<< "$line"
  		commit_message="${array[0]}\\${array[1]} [${array[2]}]"
  		printf "\n%s\n" "$commit_message"
  		cd $DIR
  		git add -A
  		git commit -m "$commit_message"
   done
