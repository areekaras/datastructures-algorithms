
// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */

// Shibili Solution - O(2n) -> O(n)
func solution(_ text: String) -> String {
    var textStack = StackStruct<String>()
    
    for char in text {  // O(n)
        textStack.push(String(char))
    }
    
    var result = ""
    
    for _ in 0 ..< textStack.count {  // O(n)
        result += textStack.pop()!
    }
    
    return result
}

solution("abc") // "cba"
solution("Would you like to play a game?")  // "?emag a yalp ot ekil uoy dluoW"

