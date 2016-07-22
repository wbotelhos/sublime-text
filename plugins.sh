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

      mv $NAME "/tmp/${NAME}_`date +%Y-%m-%d_%H-%M-%S`"

      git clone $REPO $NAME
    fi
  else
    log_install $NAME
    git clone $REPO $NAME
  fi
}

log_install() {
  echo -e "\n${GRAY}Installing $1 plugin...${NO_COLOR}"
}

log_backup_and_install() {
  echo -e "\n${GRAY}Backuping $1 folder and install a new one...${NO_COLOR}"
}

begin

cd "$PACKAGES_DIR"

download 'https://github.com/eddorre/SublimeERB'             'SublimeERB'
download 'https://github.com/facelessuser/ScopeHunter'       'ScopeHunter'
download 'https://github.com/FichteFoll/InsertDate'          'InsertDate'
download 'https://github.com/jarod2d/sublime_valign'         'sublime_valign'
download 'https://github.com/jisaacks/GitGutter'             'GitGutter'
download 'https://github.com/jonlabelle/Trimmer'             'Trimmer'
download 'https://github.com/kemayo/sublime-text-2-git'      'Git'
download 'https://github.com/victorporof/Sublime-JSHint'     'Sublime-JSHint'
download 'https://github.com/wbotelhos/sublime-sass-cleaner' 'sublime-sass-cleaner'
download 'https://github.com/zoomix/SublimeToggleSymbol'     'SublimeToggleSymbol'
cd -

end
