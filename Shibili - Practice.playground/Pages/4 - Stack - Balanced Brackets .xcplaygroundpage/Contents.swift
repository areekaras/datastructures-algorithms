
/*
 Balanced brackets
 https://www.hackerrank.com/challenges/balanced-brackets/problem
 
 A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].

 Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or {) occurs to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of matched pairs of brackets: [], {}, and ().

 A matching pair of brackets is not balanced if the set of brackets it encloses are not matched. For example, {[(])} is not balanced because the contents in between { and } are not balanced. The pair of square brackets encloses a single, unbalanced opening bracket, (, and the pair of parentheses encloses a single, unbalanced closing square bracket, ].

 By this logic, we say a sequence of brackets is balanced if the following conditions are met:

 It contains no unmatched brackets.
 The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched pair of brackets.
 Given  strings of brackets, determine whether each sequence of brackets is balanced. If a string is balanced, return YES. Otherwise, return NO.
 
 */

 
//MARK: - Shibili Solution
/*
func isBalanced(s: String) -> String {
    let bracketsDict: [Character: Character] = [ "{": "}",
                                                 "[": "]",
                                                 "(": ")"]
    
    var bracketsStack = StackStruct<Character>()
    
    for char in s {
        if bracketsDict.keys.contains(char) {
            bracketsStack.push(char)
        } else if bracketsDict.values.contains(char) {
            guard let openBracket = bracketsStack.pop(), bracketsDict[openBracket] == char
            else {
                return "NO"
            }
        }
    }
    
    return bracketsStack.isEmpty ? "YES" : "NO"
}
*/



//MARK: - Couse solution
func isBalanced(s: String) -> String {
    var bracketsArray = [Character]()
    
    for ch in s {
        switch ch {
        case "{", "[", "(":
            bracketsArray.append(ch)
            
        case "}":
            guard checkLastBracket(of: bracketsArray, with: "{") else { return "NO" }
            bracketsArray.popLast()
            
        case "]":
            guard checkLastBracket(of: bracketsArray, with: "[") else { return "NO" }
            bracketsArray.popLast()
            
        case ")":
            guard checkLastBracket(of: bracketsArray, with: "(") else { return "NO" }
            bracketsArray.popLast()
            
        default: break
        }
    }
    
    return bracketsArray.isEmpty ? "YES" : "NO"
}

private func checkLastBracket(of array: [Character],with openBracket: Character) -> Bool {
    if array.isEmpty || array.last != openBracket {
        return false
    }
    return true
}




isBalanced(s: "{[()]}") // YES
isBalanced(s: "[()]}") // NO
isBalanced(s: "{}()(){}((){})({[[({({(){}{}}){}})]{({()}((())))}()]})(({}(()){[][]}){()}(({}{}))())()[](){{((){})}}()([[]])[][]()({}((([()]{})())[][[()]]())){{}}[]{()}()[][]{}([])[]{({})}{}{{}{[[]]}[]{}}{[()]}[]{(([{{[{[]}]}[{}]}]))}(){}{{}}[]((([])([{(){}[(()[]((()(){})({([]({{{[]{}}[({})()({}{([()])()()[]{}})][{[]}]{{}([]({{{(()(({}[[[{{}}]]{{[()]([[{{}([[]][([{{}}(([])[][({()}())()({}[])]{}[])]())[]]){}}[]]])([]({{[[][]{[]}[]]}}{}(){[]}))}()[]((){{}()[{[[()]]}()]}[()]{})}][]{}))())}(())}{{[]}{}}({[([{[{[[[]]]{()}[]}]{}}()((({{{{({{(){}}}[[()]()[]]())({{{[]}{{[[{{[{}]}}[][]]]([][](()(()[]){{}}))([])}}}}[{}{}])[(){{()()}{(())}()}]{(){{}[]{}[][{[]([[]()]{(){[{}[()]][{}{}]{(){}}}{[]}}{[]}[]){[]}[]}][((){}{}[[[[{{}()[([({{[[][{{()}(([[]][[[[[[[{}]][{}]]]()](())[()[][]({({[][][[]{}][]}{})}{({})([[][]({}{[]})])[([([])][[]{([])(({}))}](()[]){[[]]}({}))]}[])()]]]))([{}()()([([[{}][()]][])])][[[{}][][]({[]})][(({{()}}))]])}]]}})])]}]]]])]}}}}}})))])]})}))}}}))})))]}])))") // YES

isBalanced(s: "{([({}[]90())])}{}") //YES
isBalanced(s: "{[{)]}")             //NO
isBalanced(s: "[()]{")              //NO
