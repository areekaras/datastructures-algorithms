
/*
 ___                          ___ _      _
/ __|__ _ ___ ___ __ _ _ _   / __(_)_ __| |_  ___ _ _
|(__/ _` / -_|_-</ _` | '_| | (__| | '_ \ ' \/ -_) '_|
\___\__,_\___/__/\__,_|_|    \___|_| .__/_||_\___|_|
                                   |_|

 // Challenge: Implement a Caesar Cipher.
         //
         // A Caesar Cipher is a basic encryption algorithm that takes all the letters message
         // and encrypts them by shifting them over some fixed amount.
         //
         // For example a Caesar Cipher of x3 would map the alphabet like this:
         //
         // Plain:    ABCDEFGHIJKLMNOPQRSTUVWXYZ
         // Cipher:   XYZABCDEFGHIJKLMNOPQRSTUVW
         //
         // And the following text like this:
         //
         // Plaintext:  THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG
         // Ciphertext: QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD
         //
         // Write an encrypt and decrypt method of a Caesar Cipher using an offset of 3
         //
 
 // https://en.wikipedia.org/wiki/Caesar_cipher
 // http://www.sanfoundry.com/java-program-implement-caesar-cypher/ 
 */


let cipher = CaesarCipher()

cipher.encrypt("ABC")                       // XYZ
cipher.encrypt("ATTACK AT FIRST LIGHT")     // XQQXZH XQ CFOPQ IFDEQ
cipher.encrypt("MEET AT THE RUBICON")       // JBBQ XQ QEB ORYFZLK

cipher.decrypt("XYZ")                       // ABC
cipher.decrypt("XQQXZH XQ CFOPQ IFDEQ")     // ATTACK AT FIRST LIGHT
cipher.decrypt("JBBQ XQ QEB ORYFZLK")       // MEET AT THE RUBICON


let cipherSimple = CaesarCipherSimple()

cipherSimple.encrypt("ABC")                       // XYZ
cipherSimple.encrypt("ATTACK AT FIRST LIGHT")     // XQQXZH XQ CFOPQ IFDEQ
cipherSimple.encrypt("MEET AT THE RUBICON")       // JBBQ XQ QEB ORYFZLK

cipher.decrypt("XYZ")                       // ABC
cipher.decrypt("XQQXZH XQ CFOPQ IFDEQ")     // ATTACK AT FIRST LIGHT
cipher.decrypt("JBBQ XQ QEB ORYFZLK")       // MEET AT THE RUBICON
