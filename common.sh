#!/bin/bash

##################
# --- common --- #
##################

GRAY='\033[0;36m'
GREEN='\033[0;32m'
NO_COLOR='\033[1;0m'
RED='\033[1;31m'
YELLOW='\033[1;33m'

###################
# --- configs --- #
###################

APPS_FOLDER=~/Development
JOB_NAME="Sublime#--"
VERSION=2

#####################
# --- functions --- #
#####################

begin() {
  echo -e "-------------------------------------"
  echo -e "${GRAY}Starting ${JOB_NAME}...${NO_COLOR}\n"
}

configure() {
  APP_NAME='Sublime Text'

  if [ `uname` == 'Linux' ]; then
    APP_PATH=${APPS_FOLDER}/"${APP_NAME} ${VERSION}"/sublime_text
    EXEC_PATH=${APP_PATH}
    OS='Linux'
    CONFIG_DIR=~/.config/"sublime-text-${VERSION}"
    PACKAGES_DIR=${CONFIG_DIR}/Packages
  else
    APP_PATH=/Applications/"${APP_NAME} 2".app
    EXEC_PATH="${APP_PATH}"/Contents/SharedSupport/bin/subl
    OS='Mac'
    CONFIG_DIR=~/Library/'Application Support'/"${APP_NAME} ${VERSION}"
    PACKAGES_DIR=${CONFIG_DIR}/Packages
  fi

  if [ ! -e "${APP_PATH}" ]; then
    echo -e "\n${RED}The \"${APP_NAME}\" is not installed yet. Do it first!${NO_COLOR}\n" && exit 1
  fi
}

end() {
  echo -e "${GREEN}Done!${NO_COLOR}"
  echo -e "-------------------------------------\n"
}

show_info() {
  echo -e "\n${YELLOW}Packages at '${PACKAGES_DIR}' on (${OS})${NO_COLOR}\n"
}

################
# --- init --- #
################

configure
show_info

USER_DIR=${PACKAGES_DIR}/User

SETTINGS_DIR=${CONFIG_DIR}/Settings
SYNTAXES_DIR=${USER_DIR}/syntaxes

mkdir -p "$CONFIG_DIR"
mkdir -p "$SNIPPETS_DIR"
mkdir -p "$SYNTAXES_DIR"

