EDITOR='subl .'
PROJECTS_DIRECTORY='rails_projects'

ucp() {
  grep -q PROJECT ~/.bash_profile  && sed -i '.backup' "s!^\([^#]*PROJECT=\)\(.*\)!\1$1 #\2!" ~/.bash_profile
  command source ~/.bash_profile \;
}
wrk() {
  if [ -z "$PROJECT" ]; then
    printf '\e[0;33mNo project directory set. Run ucp [directory argument].\nRedirected to the projects directory \e[0m \n'
  elif [ -d ~/$PROJECTS_DIRECTORY/$PROJECT ]; then
    cd ~/$PROJECTS_DIRECTORY/$PROJECT
    command $EDITOR
  else
    printf '\e[0;33mDirectory not found.\nThe Current project is test to \e[0;31m'$PROJECT'\e[0;33m\nRun ucp [directory argument]\nRedirected to the projects directory \e[0m \n'
    cd ~/$PROJECTS_DIRECTORY/
  fi
}

PROJECT=
