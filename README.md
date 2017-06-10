# A simple interface to securely encrypt/decrypt files using
#### Usage
$ ```bash decrypt.sh``` to decrypt the file to use it. You need to have a passphrase in order to decrypt it. After you are done using it, you should encrypt it again with ```bash encrypt.sh```, using a secure, long passphrase.

$ ```bash encrypt.sh``` to encrypt the file to secure it. This only works if you have previously decrypted the file. You can enter a passphrase with which the file will be encrypted using symmetric encryption. Only this passphrase is needed to decrypt the file again using ```gpg ENCRYPTEDFILE```.

####
