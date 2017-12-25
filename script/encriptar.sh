#!/bin/bash
FILE_PASSWORD=$1
FILE_TO_ENCRYPT=$2

cat $FILE_PASSWORD | gpg -c --no-tty --cipher-algo AES256 --passphrase-fd 0 --batch -o ${FILE_TO_ENCRYPT}.gpg $FILE_TO_ENCRYPT

if [ $? -eq 0 ]
then

	rm -f $FILE_TO_ENCRYPT
fi
