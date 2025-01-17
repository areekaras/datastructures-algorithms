/*
 Write a function that determines the length of any linked list.
 */

import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

// O(n) - Shibili Solution
func length(_ head: Node?) -> Int {
    guard var node = head else { return 0 }
    
    var count = 1
    while let next = node.next {
        count += 1
        node = next
    }
    
    return count
}

// 1 2 3 4 5 6
let node6 = Node(6)
let node5 = Node(5, node6)
let node4 = Node(4, node5)
let node3 = Node(3, node4)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

length(nil) // 0
length(node1) // 6
