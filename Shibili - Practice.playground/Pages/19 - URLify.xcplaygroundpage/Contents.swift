/*
 _   _ ___ _    _  __
 | | | | _ \ |  (_)/ _|_  _
 | |_| |   / |__| |  _| || |
 \___/|_|_\____|_|_|  \_, |
 |__/
 
 Challenge: See if you can replace all the spaces in a a string with the
 ASCII symbol for space '%20'. Assume you are given the length of the final
 string. Hint: Use array of char[].
 
 */

import Foundation

//MARK: - Shibili's Solution
func urlify(_ url: String, length: Int) -> String {
    var urlified = ""
    
    for char in url {
        if char == " " {
            urlified += "%20"
        } else {
            urlified += String(char)
        }
        
        if urlified.count == length { break }
    }
    
    return urlified
}


//MARK: - Course Solution
//func urlify(_ url: String, length: Int) -> String {
//    var result = Array<Character>(repeating: " ", count: length)
//
//    let cleanURLString = url.trimmingCharacters(in: .whitespacesAndNewlines)
//
//    var pointer = 0
//
//    for char in cleanURLString {
//        if char != " " {
//            result[pointer] = char
//            pointer += 1
//        } else {
//            result[pointer] = "%"
//            result[pointer+1] = "2"
//            result[pointer+2] = "0"
//            pointer += 3
//        }
//    }
//
//    return String(result)
//}

urlify("My Home Page    ", length: 16) // "My%20Home%20Page"
urlify("My  Home  Page    ", length: 22) // "My%20Home%20Page"
