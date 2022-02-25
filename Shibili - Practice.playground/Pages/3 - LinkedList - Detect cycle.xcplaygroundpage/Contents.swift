/*
 Detect A Cycle
 https://www.hackerrank.com/challenges/ctci-linked-list-cycle/problem
 https://en.wikipedia.org/wiki/Cycle_detection#Floyd's_Tortoise_and_Hare
 
 A linked list is said to contain a cycle if any node is visited more than once while traversing the list. For example, in the following graph there is a cycle formed when node 5 points back to node 3.
 
        4
      /   \
 1 2 3      5
     \_____/
 
 */

import Foundation

class Node {
    var data: Int
    weak var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}


//MARK: - Shibili Solution

// Time: O(n) , Space: O(n) - With space support
func hasCycleSpace(first: Node) -> Bool {
    var hashTable = [Int: Bool]()

    var current: Node? = first
    while let node = current {
        if hashTable[node.data] == true {
            return true
        }
        
        hashTable[node.data] = true
        current = current?.next
    }
    
    return false
}

let node5 = Node(5)
let node4 = Node(4)
let node3 = Node(3)
let node2 = Node(2)
let head = Node(1)

head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node3

hasCycleSpace(first: head) //true

node5.next = nil
hasCycleSpace(first: head) // false
