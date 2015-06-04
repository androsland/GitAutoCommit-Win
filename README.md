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

## Services
To make the scripts run without interference, you can create a Windows service ***for each one***.<br>
Start cmd as an administrator and execute the following command to create a service
```
sc create service_name binPath= "full_path_to_script" displayname= "display_name" start= auto
```
**service_name:** Give your service a name.<br>
**full_path_to_script:** Full path to the the script you want to make a service of.<br>
**display_name:** A name that will be displayed for the service.<br>

## References
* inotify-win by thekid (https://github.com/thekid/inotify-win)

