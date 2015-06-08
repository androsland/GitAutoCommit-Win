#
# Put this file in the folder you want to make a repository and execute it to 
# initialize a new repository.
# WARNING: THIS WILL REMOVE ANY EXISTING GIT FORLDERS. ANY UNPUSHED WORK WILL BE LOST
#

DUMMYFILE='dummyfile.txt'
if [ -d '.git' ];
then
	rm -rf .git
fi
git init
echo  $DUMMYFILE > .gitignore
touch $DUMMYFILE
