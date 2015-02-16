#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#snippets'

begin

echo -e "Copying '*.sublime-keymap' to '${USER_DIR}'\n"

cp ./snippets/*.sublime-snippet "$SNIPPETS_DIR"

end
