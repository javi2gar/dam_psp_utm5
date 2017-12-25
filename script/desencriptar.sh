#!/bin/bash
FILE_PASSWORD=$1
FILE_TO_DECRYPT=$2

cat $FILE_PASSWORD | gpg --passphrase-fd 0 --decrypt --batch -o $FILE_TO_DECRYPT ${FILE_TO_DECRYPT}.gpg

