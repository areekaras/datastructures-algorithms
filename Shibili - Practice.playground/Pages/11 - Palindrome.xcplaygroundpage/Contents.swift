
/*
 ___ _      _ _         _
| _ \ |__ _| (_)_ _  __| |_ _ ___ _ __  ___ ___
|  _/ / _` | | | ' \/ _` | '_/ _ \ '  \/ -_|_-<
|_| |_\__,_|_|_|_||_\__,_|_| \___/_|_|_\___/__/

 // Challenge: Detect if a given string is a palindrome.
 // A palindrome is a word that can be spelt the same way forwards and backwards.

 */

func isPalindrome(_ text: String) -> Bool {
    var textArray = Array(text)
    
    let count = textArray.count
    
    for index in 0 ..< count / 2 {
        if textArray[index] != textArray[count - index - 1] {
            return false
        }
    }
    
    return true
}

isPalindrome("abba")    // true
isPalindrome("mom")     // true
isPalindrome("dad")     // true
isPalindrome("radar")   // true
isPalindrome("rush")    // false
isPalindrome("yes")     // false
isPalindrome("malayalam")   // true
isPalindrome("1234")    // false
