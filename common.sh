#!/bin/bash

##################
# --- Common --- #
##################

GRAY='\033[0;36m'
GREEN='\033[0;32m'
NO_COLOR='\033[1;0m'
RED='\033[1;31m'
YELLOW='\033[1;33m'

##########################
# --- Configurations --- #
##########################

FOLDER_NAME='Sublime Text 2'
JOB_NAME="Sublime#--"
LINUX_APP_FOLDER=~/Development
LINUX_CONFIG_FOLDER='sublime-text-2'

#####################
# --- Functions --- #
#####################

begin() {
  echo -e "-------------------------------------"
  echo -e "${GRAY}Starting ${JOB_NAME}...${NO_COLOR}\n"
}

configure() {
  if [ `uname` == 'Linux' ]; then
    APP_PATH=${LINUX_APP_FOLDER}/"${FOLDER_NAME}"/sublime_text
    EXEC_PATH=${APP_PATH}
    OS='Linux'
    CONFIG_DIR=~/.config/"${LINUX_CONFIG_FOLDER}"
    PACKAGES_DIR=${CONFIG_DIR}/Packages
  else
    APP_PATH=/Applications/"${FOLDER_NAME}".app
    EXEC_PATH="${APP_PATH}"/Contents/SharedSupport/bin/subl
    OS='Mac'
    CONFIG_DIR=~/Library/'Application Support'/"${FOLDER_NAME}"
    PACKAGES_DIR=${CONFIG_DIR}/Packages
  fi

  if [ ! -e "${APP_PATH}" ]; then
    echo -e "\n${RED}The \"${FOLDER_NAME}\" is not installed yet. Do it first!${NO_COLOR}\n" && exit 1
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
# --- Init --- #
################

configure
show_info

USER_DIR=${PACKAGES_DIR}/User

SETTINGS_DIR=${CONFIG_DIR}/Settings
SNIPPETS_DIR=${USER_DIR}/snippets
SYNTAXES_DIR=${USER_DIR}/syntaxes

mkdir -p "$CONFIG_DIR"
mkdir -p "$SNIPPETS_DIR"
mkdir -p "$SYNTAXES_DIR"

