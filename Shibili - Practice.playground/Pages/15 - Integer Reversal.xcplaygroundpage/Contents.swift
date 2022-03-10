/*
 ___     _                      ___                          _
|_ _|_ _| |_ ___ __ _ ___ _ _  | _ \_____ _____ _ _ ___ __ _| |
 | || ' \  _/ -_) _` / -_) '_| |   / -_) V / -_) '_(_-</ _` | |
|___|_||_\__\___\__, \___|_|   |_|_\___|\_/\___|_| /__/\__,_|_|
                |___/
 
 // Challenge: Given an int, reverse its digits.
 // x = 123, return 321
 // x= -123, return -321

 */

import Foundation

func reverse(_ x: Int) -> Int {
    var mutableX = x
    var reversed = 0
    
    while mutableX != 0 {
        let lastDigit = mutableX % 10
        reversed = (reversed * 10) + lastDigit
        mutableX /= 10
    }
    
    return reversed
}

reverse(123)        // 321
reverse(-123)       // -321
reverse(987654321)  // 123456789
reverse(-987654321) // -123456789
