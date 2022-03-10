/*
   _
  /_\  _ _  __ _ __ _ _ _ __ _ _ __  ___
 / _ \| ' \/ _` / _` | '_/ _` | '  \(_-<
/_/ \_\_||_\__,_\__, |_| \__,_|_|_|_/__/
                |___/
 
 // Challenge: Given two strings, write an algorithm to detect whether one word is an anagram of the other.
 // An anagram is a word that can be made by changing the order of the letters in another word.
 //
 // For example:
 // tar => rat
 // state => taste

 */

/*
 We could create a Dictionary of each word, and do a count comparison
 like we did in ransom note. Or, we could note that two sorted String
 equal to each other would also be anagrams.
 */


//MARK: - Shibili's Solution
/*
func isAnagram(_ text: String, _ anagram: String) -> Bool {
    var textMap = [Character: Int]()
    var anagramMap = [Character: Int]()
    
    for char in text {
        textMap[char] = (textMap[char] ?? 0) + 1
    }
    
    for char in anagram {
        anagramMap[char] = (anagramMap[char] ?? 0) + 1
    }
    
    let textKeys = textMap.keys
    let anagramKeys = anagramMap.keys
    
    guard textKeys.count == anagramKeys.count else { return false }
    
    for key in textKeys {
        if textMap[key] != anagramMap[key] {
            return false
        }
    }
    
    return true
}
*/

//MARK: - Course Solution
func isAnagram(_ text: String, _ anagram: String) -> Bool {
    let sortedTextArray = Array(text).sorted()
    let sortedAnagramArray = Array(anagram).sorted()
    
    return sortedTextArray == sortedAnagramArray
}


isAnagram("arc", "car")         // true
isAnagram("night", "thing")     // true
isAnagram("cat", "dog")         // false
