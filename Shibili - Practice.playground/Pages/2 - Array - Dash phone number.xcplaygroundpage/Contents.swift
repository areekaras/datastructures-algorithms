
/*
 We are given a string S representing a phone number, which we would like to reformat. String S consists of N characters: digits, spaces, and/or dashes. It contains at least two digits.
 
 Spaces and dashes in string S can be ignored. We want to reformat the given phone number is such a way that the digits are grouped in blocks of length three, separated by single dashes. If necessary, the final block or the last two blocks can be of length two.
 
 For example:
 
 S = "00-44   48 5555 8361" should become
     "004-448-555-583-61"
 
 Assume:
 - S consists only of digits (0-9), spaces, and/or dashses (-)
 - S containts at least two digits
 
 Translate:
 
 Would like to reformat a phone number string so that:
 - every third char is a "-"
 - spaces and dashes don't matter
 - if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx (not obvious)
 
 */

import Foundation

//MARK: - 1. Shibili Solution - O(n)
/*
func solution(_ S : String) -> String {
    guard S.count > 3 else { return S }
    
    var dashedNumber = [String]()
    var mode3 = 0
    
    for char in S {
        if char.isNumber {
            dashedNumber.append(String(char))
            mode3 += 1
        }
        
        if mode3 == 3 {
            dashedNumber.append("-")
            mode3 = 0
        }
    }
    
    guard dashedNumber.count > 1 else { return "" }
    
    if mode3 == 0 {
        dashedNumber.removeLast()
    } else if mode3 == 1 {
        let dashedCount = dashedNumber.count
        dashedNumber.swapAt(dashedCount - 2, dashedCount - 3)
    }
    
    return dashedNumber.joined()
}



solution("123456789")           // 123-456-789
solution("555372654")           // 555-372-654
solution("0 - 22 1985--324")    // 022-198-53-24

// Edge cases
solution("   ---    ")                  // ""
solution("0")                           // 0
solution("01")                          // 01
solution("012")                         // 012
solution("0123")                        // 01-23
solution("0123       444")              // 012-34-44
solution("------0123       444")        // 012-34-44

*/



//MARK: - 2. Course Solution
func solution(_ S : String) -> String {
    //Remove all spaces and dashes
    let noSpacesString = S.replacingOccurrences(of: " ", with: "")
    let noDashesString = noSpacesString.replacingOccurrences(of: "-", with: "")
    
    var result = ""
    var count = -2
    
    //Loop through
    for char in noDashesString {
        result.append(char)
        if count % 3 == 0 {
            result.append("-")
        }
        count += 1
    }
    
    //Remove lingering dash
    if result.last == "-" {
        result = String(result.dropLast())
    }
    
    var chars = Array(result)
    if result.count > 3 {
        if chars[result.count - 2] == "-" {
            chars[result.count - 2] = chars[result.count - 3]
            chars[result.count - 3] = "-"
        }
    }
    
    return String(chars)
}


solution("123456789")           // 123-456-789
solution("555372654")           // 555-372-654
solution("0 - 22 1985--324")    // 022-198-53-24

// Edge cases
solution("   ---    ")                  // ""
solution("0")                           // 0
solution("01")                          // 01
solution("012")                         // 012
solution("0123")                        // 01-23
solution("0123       444")              // 012-34-44
solution("------0123       444")        // 012-34-44
