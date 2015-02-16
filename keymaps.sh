#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#keymaps'

ALIAS_NAME='sublime'
ALIAS_PATH=/usr/local/bin/${ALIAS_NAME}

begin

echo -e "Copying '*.sublime-keymap' to '${USER_DIR}'\n"

cp ./keymaps/*.sublime-keymap "$USER_DIR"

end
