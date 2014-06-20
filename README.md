Some bash_profile automation
===============

Bash Automation

​upc uses grep and sed to parse through the .bash_profile for the variable PROJECT, comment out the last value and write the new one. Also, during this process a backup of .bash_profile is created in ~/ called .bash_profile.backup.  Then it automatically reloads the bash_profile for the current terminal (source ~/.bash_profile).  So if you're going to be working on a specific project just type upc your_cool_project then type wrk.

​wrk does all the cd stuff based off of three variables EDITOR, PROJECTS_DIRECTORY and PROJECT.  Once the directory has been changed it fires up sublime text.  It has a bit of error handling that lets you know a project hasn't been set up or that the project directory does not exist.
