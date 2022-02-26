
let intStack = Stack<Int>()
intStack.push(1) // [1]
intStack.push(2) // [1, 2]
intStack.push(3) // [1, 2, 3]

intStack.peek       // 3
intStack.pop()      // 3
intStack.count      // 2
intStack.isEmpty    // false

intStack.pop()      // 2
intStack.pop()      // 1
intStack.peek       // nil
intStack.count      // 0
intStack.isEmpty    // true


