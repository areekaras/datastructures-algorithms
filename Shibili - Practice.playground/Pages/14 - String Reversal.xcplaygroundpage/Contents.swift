/*
 ___ _       _             ___                          _
/ __| |_ _ _(_)_ _  __ _  | _ \_____ _____ _ _ ___ __ _| |
\__ \  _| '_| | ' \/ _` | |   / -_) V / -_) '_(_-</ _` | |
|___/\__|_| |_|_||_\__, | |_|_\___|\_/\___|_| /__/\__,_|_|
                   |___/
 
 // Challenge: Given a string, return it's reverse.
 // "abc" => "cba"

 */


func reverse(_ text: String) -> String {
    var reversed = Array(text)
    let count = text.count
    
    for index in 0 ..< count / 2 {
        reversed.swapAt(index, count - index - 1)
    }
    
    return String(reversed)
}

reverse("Hello")    // olleH
reverse("Sam")      // maS
reverse("It's been a long time.")
