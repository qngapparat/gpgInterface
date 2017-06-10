# A simple interface to securely encrypt/decrypt files using gpg
#### Usage

Place the file to be encrypted in the folder.

$ ```bash decrypt.sh``` to decrypt an encrypted file (will ask you for filename) in oder to use the file. You need to have a valid passphrase in order to decrypt it. After you are done using the file, you should encrypt it again with ```bash encrypt.sh```, using a secure, long passphrase.

$ ```bash encrypt.sh``` to encrypt the file in order to to secure the file. This works with any file; encrypting an already encrypted file will result in wrapped file types such as ```*.gpg.gpg```. You will be asked to enter a passphrase with which the file will be encrypted using symmetric encryption.

#### Notes
* $ ```bash encrypt.sh``` places a copy of the newly encrypted file in ```./backup```.

* Metadata including timestamps is appended to ```./backup/actv.log``` after every encryption.
