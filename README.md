# Caesar-cipher
**Caesar Cipher Implementation
This repository contains implementations of the Caesar cipher in Python and R.**

**Python Implementation
Description:**
The Python script caesar_cipher.py provides functions for encrypting and decrypting text using the Caesar cipher.

**Methods:<br />
encrypt(text, shift):<br />**

Encrypts the input text using the Caesar cipher with the given shift value.
Parameters:
text: The text to be encrypted.
shift: An integer representing the shift value for encryption.<br />
**<br />decrypt(text, shift):**

Decrypts the input text using the Caesar cipher with the given shift value.<br />
**Parameters:<br />**
text: The text to be decrypted.<br />
shift: An integer representing the shift value for decryption.<br />
<br />**R Implementation
Description:**
The R script caesar_cipher.R provides functions for encrypting and decrypting text using the Caesar cipher.

**Methods:<br />
cezar_szyfr(tekst, przesuniecie):<br />**

Encrypts the input text using the Caesar cipher with the given shift value.
**<br />Parameters:**
<br />tekst: The text to be encrypted.
<br />przesuniecie: An integer representing the shift value for encryption.<br />
**<br />cezar_deszyfr(zaszyfrowany_tekst, przesuniecie):**

Decrypts the input text using the Caesar cipher with the given shift value.
<br />**Parameters:**<br />
zaszyfrowany_tekst: The text to be decrypted.
<br />przesuniecie: An integer representing the shift value for decryption.<br />
<br />Usage:
To use the scripts, simply provide the text and the desired shift value for encryption or decryption.

**Example (Python):**
```diff
encrypted_text = encrypt("Hello, World!", 3)
print("Encrypted Text:", encrypted_text)
decrypted_text = decrypt(encrypted_text, 3)
print("Decrypted Text:", decrypted_text)
```
**Example (R):**
```diff
tekst_wejsciowy <- "Hello, World!"
przesuniecie <- 3
zaszyfrowany_tekst <- cezar_szyfr(tekst_wejsciowy, przesuniecie)
print(paste("Encrypted Text:", zaszyfrowany_tekst))
odszyfrowany_tekst <- cezar_deszyfr(zaszyfrowany_tekst, przesuniecie)
print(paste("Decrypted Text:", odszyfrowany_tekst))
```
