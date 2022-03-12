/*
 __  __ _           _           _
|  \/  (_)_ _    __| |_ __ _ __| |__
| |\/| | | ' \  (_-<  _/ _` / _| / /
|_|  |_|_|_||_| /__/\__\__,_\__|_\_\

 // Challenge: Design a stack which, in addition to push and pop, has a function
 // 'min' which returns the minimum element? Push, pop and min should all operate in
 // O(1) time.

 */

import Foundation

struct MinStack {
    private class Node {
        let data: Int
        let min: Int
        var next: Node?
        
        init(_ data: Int, min: Int, next: Node? = nil) {
            self.data = data
            self.min = min
            self.next = next
        }
    }
    
    private var head: Node?
    
    mutating func push(_ data: Int) {
        var currentMin = data
        
        if head != nil {
            currentMin = Swift.min(min()!, data)
        }
        
        let newNode = Node(data, min: currentMin, next: head)
        head = newNode
    }
    
    mutating func pop() -> Int? {
        let data = head?.data
        head = head?.next
        return data
    }
    
    func min() -> Int? {
        return head?.min
    }
}




var stack = MinStack() // Create this how ever you want...

stack.push(5)
stack.push(6)
stack.push(3)
stack.push(7)
stack.min()       // 3
stack.pop()
stack.min()       // 3
stack.pop()
stack.min()       // 5
