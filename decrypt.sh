#!/bin/bash


NAMEMSG="Please enter (a part of) the file's name you want to decrypt:"

echo $NAMEMSG
read FILENAMESUBSTRING

ENCRYPTEDFILE=$(ls | grep $FILENAMESUBSTRING)

if [[ "$ENCRYPTEDFILE" != *.gpg ]] || [ ! -f "$ENCRYPTEDFILE" ]; then
    echo "$ENCRYPTEDFILE.gpg not found in this directory. Nothing to decrypt."
    exit 1
fi

echo "Decrypting '$ENCRYPTEDFILE'."
gpg $ENCRYPTEDFILE && rm -f $ENCRYPTEDFILE && echo -e "\nDecrypted file successfully\n"
