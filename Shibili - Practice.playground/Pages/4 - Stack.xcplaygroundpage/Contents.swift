
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





var intStructStack = StackStruct<Int>()
intStructStack.push(1) // [1]
intStructStack.push(2) // [1, 2]
intStructStack.push(3) // [1, 2, 3]

intStructStack.peek       // 3
intStructStack.pop()      // 3
intStructStack.count      // 2
intStructStack.isEmpty    // false

intStructStack.pop()      // 2
intStructStack.pop()      // 1
intStructStack.peek       // nil
intStructStack.count      // 0
intStructStack.isEmpty    // true
