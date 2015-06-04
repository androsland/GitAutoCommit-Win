# GitAutoCommit-Win
Scripts to help you autocommit your work with git when a file changes in the directory on Windows.<br>
Bad practice or not, this is sometimes needed.<br>
As a commit message you get the path to the file and the how that file was changed (e.g MODIFY for file change)<br>
For more information on these events, go to ***inotify-win***'s repo (link in the references)

## Prerequisites
* Git for Windows (e.g. https://git-scm.com/ [recommend])
* An executable of inotify-win. A compiled one is already included in the repo

## How to use
* (OPTIONAL) Edit filechangelistener.sh and autocommit.sh and set the DUMMYFILE and DIR variables. <br>
*Please note that the DIR variable is "." so you will have to place the files in the folder you want to autocommit.*
* Run filechangelistener.sh. This files uses inotifywait to listen to file changes
* Run autocommit.sh. This file will commit any changes caught by filechangelistener to the local repository. No push available. Change accordingly.

## References
* inotify-win by thekid (https://github.com/thekid/inotify-win)






