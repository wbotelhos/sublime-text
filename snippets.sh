#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#snippets'

begin

echo -e "Copying 'snippets' folder to '${USER_DIR}'\n"

cp -R ./snippets "${USER_DIR}"

end
