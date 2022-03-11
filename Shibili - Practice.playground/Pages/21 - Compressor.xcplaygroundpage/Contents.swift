
/*
 ___
/ __|___ _ __  _ __ _ _ ___ ______ ___ _ _
|(__/ _ \ '  \| '_ \ '_/ -_|_-<_-</ _ \ '_|
\___\___/_|_|_| .__/_| \___/__/__/\___/_|
              |_|
 
 // Challenge: Give a string with repeating characters (i.e. "aaabb") write
 // an algorithm that will compress the string down to the character, followed
 // by the number of times it appears in the string (i.e "a3b2").
 // If the compressed string is not smaller than original, return original.

 */

//MARK: - Shibili's Solution
//func compress(_ str: String) -> String {
//    var compressed = ""
//    var prevChar = ""
//    var charCount = 1
//
//    for char in str {
//        let stringChar = String(char)
//        if stringChar != prevChar {
//            compressed += prevChar + (charCount > 1 ? String(charCount) : "")
//            charCount = 1
//            prevChar = stringChar
//        } else {
//            charCount += 1
//        }
//    }
//
//    compressed += prevChar + (charCount > 1 ? String(charCount) : "")
//
//    return compressed.count < str.count ? compressed : str
//}


//MARK: - Course Solution
func compress(_ str: String) -> String {
    var compressed = ""
    let charArray = Array(str)
    var count = 0
    
    for i in 0 ..< str.count {
        count += 1
        
        if i + 1 >= str.count || charArray[i] != charArray[i+1] {
            compressed.append(charArray[i])
            compressed.append(String(count))
            count = 0
        }
    }
    
    return compressed.count < str.count ? compressed : str
}

compress("aaabb")           // a3b2
compress("aabb")            // aabb
compress("ab")              // ab
compress("abc")             // abc
compress("zzz")             // z3
compress("aabbaabb")        // aabbaabb (not shorter)

