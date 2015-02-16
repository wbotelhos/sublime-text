#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#keymaps'

FORCE=$1

#####################
# --- Functions --- #
#####################

download() {
  REPO=$1
  NAME=$2

  if [ -e "$NAME" ]; then
    if [ "$FORCE" == 'force' ]; then
      log_backup_and_install $NAME

      mv $NAME "$NAME_`date +%Y-%m-%d_%H-%M-%S`"
    fi
  else
    log_install $NAME
  fi

  git clone $REPO $NAME
}

log_install() {
  echo -e "\n${GRAY}Installing $1 plugin...${NO_COLOR}"
}

log_backup_and_install() {
  echo -e "\n${GRAY}Backuping $1 folder and install a new one...${NO_COLOR}"
}

begin

cd "$PACKAGES_DIR"

download 'https://github.com/jisaacks/GitGutter'                     'GitGutter'
download 'https://github.com/victorporof/Sublime-JSHint'             'SublimeJSHint'
download 'https://github.com/wbotelhos/sublime-assignment'           'Assignment'
download 'https://github.com/wbotelhos/sublime-sass-cleaner'         'SASSCleaner'

cd -

end
