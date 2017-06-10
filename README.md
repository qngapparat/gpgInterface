# A simple interface to securely encrypt/decrypt files using gpg
#### Usage
$ ```bash decrypt.sh``` to decrypt an encrypted file (will ask you for filename) in oder to use the file. You need to have a valid passphrase in order to decrypt it. After you are done using the file, you should encrypt it again with ```bash encrypt.sh```, using a secure, long passphrase.

$ ```bash encrypt.sh``` to encrypt the file in order to to secure the file. This works with any file; a encrypted file can be encrypted again (resulting in ```*.gpg.gpg```). You will be asked to enter a passphrase with which the file will be encrypted using symmetric encryption.
