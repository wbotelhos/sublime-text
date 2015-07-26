#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#snippets'

begin

echo -e "Copying '*.sublime-keymap' to '${USER_DIR}'\n"

cp ./settings/*.sublime-settings "${USER_DIR}"

end
