#!/usr/bin/env bash

if [[ $(autopep8 --aggressive --max-line-length=116 --exclude=**/*/migrations/*.py,**/*/node_modules/**/*.py -r --diff /github/workspace/| wc -c) -ne 0 ]]; then
    echo "autopep8 needs to run"
    autopep8 --aggressive --max-line-length=116 --exclude=**/*/migrations/*.py,**/*/node_modules/**/*.py -r --diff /github/workspace/
    exit 1
else
    echo "autopep8 did not find formatting errors"
    exit 0
fi
