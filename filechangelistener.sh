DIR="." 
DUMMYFILE='androsland.txt'
if [ -d '.git' ]
then
	rm -rf .git
fi
git init
echo  $DUMMYFILE > .gitignore
touch $DUMMYFILE
inotifywait -mr --excludei '.git' --format '%w;%f;%e' $DIR 1>$DUMMYFILE
