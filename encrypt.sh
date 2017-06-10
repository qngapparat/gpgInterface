#!/bin/bash

#TODO don't encrypt present .gpg files another time

NAMEMSG="Please enter (a part of) the file's name you want to encrypt: \nNOTE: currently, only one file at a time is supported."
NOTEMSG="\nNOTE: You will be asked to create a passphrase for this file.\nYOU NEED THIS PHRASE TO DECRYPT THE FILE AGAIN\n"
SUCCESSMSG="\nEncrypted $DECRYPTEDFILE successfully\nPlease secure the passphrase you used.\nThe file can be decrypted again by using the command 'bash decrypt.sh'"

echo -e $NAMEMSG
read FILENAMESUBSTRING

#search for file with substring FILENAMESUBSTRING in this directory
DECRYPTEDFILE=$(ls | grep $FILENAMESUBSTRING)

#check for empty string (grep found nothing), or if there's no file with that name
if [ -z  "$DECRYPTEDFILE" ] || [ ! -f "$DECRYPTEDFILE" ]; then
    echo "File '$DECRYPTEDFILE' not found in this directory. Nothing to encrypt."
else
    echo "Encrypting '$DECRYPTEDFILE'."
    #create expected filename of the encrypted file
    ENCRYPTEDFILE=$DECRYPTEDFILE
    ENCRYPTEDFILE+=.gpg
    echo -e $NOTE
    #encrypt, make a copy of the encrypted file, delete unencrypted file
    gpg -c $DECRYPTEDFILE && cp $ENCRYPTEDFILE ./backup && rm -f $DECRYPTEDFILE
    #append access time etc to activity log file
    stat ./backup/$ENCRYPTEDFILE >> ./backup/.actv.log && echo -e $SUCCESSMSG

fi
