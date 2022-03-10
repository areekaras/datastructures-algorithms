/*
 _   _      _                ___ _
| | | |_ _ (_)__ _ _  _ ___ / __| |_  __ _ _ _ ___
| |_| | ' \| / _` | || / -_) (__| ' \/ _` | '_(_-<
 \___/|_||_|_\__, |\_,_\___|\___|_||_\__,_|_| /__/
                |_|

 Challenge: Given a string, see if you can detect whether it contains only unique chars.
 
 */

func isUnique(_ text: String) -> Bool {
    var textMap = [Character: Bool]()
    
    for char in text {
        if textMap[char] == true {
            return false
        }
        textMap[char] = true
    }
    
    return true
}

isUnique("ab") // true
isUnique("aa") // false
isUnique("abcdefghijklmnopqrstuvwxyz") //true
