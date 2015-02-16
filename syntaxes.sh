#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#syntaxes'

begin

cp -r ./syntaxes/*.tmLanguage "${SYNTAXES_DIR}"

end
