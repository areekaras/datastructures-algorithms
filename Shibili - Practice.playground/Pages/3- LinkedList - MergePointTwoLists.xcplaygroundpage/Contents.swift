/*
 Find Merge Point of Two Lists

 Given pointers to the head nodes of 2 linked lists that merge together at some point, find the node where the two lists merge. The merge point is where both lists point to the same node, i.e. they reference the same memory location. It is guaranteed that the two head nodes will be different, and neither will be NULL. If the lists share a common node, return that node's data value.

 Note: After the merge point, both lists will share the same node pointers.
 
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

func length(_ head: Node?) -> Int {
    if head == nil {
        return 0
    }
    
    var len = 0
    var current = head
    while current != nil {
        len += 1
        current = current?.next
    }
    return len
}

func printLinkedList(_ head: Node?) {
    if head == nil { return }
    
    var result = [Int]()
    var node = head
    result.append(node!.data)
    
    while node?.next != nil {
        result.append(node!.next!.data)
        node = node?.next
    }
    
    print(result)
}


//MARK: - Shibili's Solution


// 1. O(m*n) - Brute force - Shibili's
extension Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.data == rhs.data
    }
}

func findMergeBrute(headA: Node?, headB: Node?) -> Int? {
    var nodeA = headA
    
    while nodeA != nil { // O(m)
        var nodeB = headB
        
        while nodeB != nil { // O(n)
            if nodeA == nodeB {
                return nodeA?.data
            }
            nodeB = nodeB?.next
        }
        
        nodeA = nodeA?.next
    }
    
    return nil
}

// 2. O(m + n) -  Trade off space with time
func findMergeSpaceTime(headA: Node?, headB: Node?) -> Int? {
    var hashA = [Int: Bool]()
    
    var nodeA = headA
    while let node = nodeA { // O(m)
        hashA[node.data] = true
        nodeA = nodeA?.next
    }
    
    var nodeB = headB
    while let node = nodeB { // O(n)
        if hashA[node.data] == true {
            return node.data
        }
        nodeB = nodeB?.next
    }
    
    return nil
}

// 3. O(n) - if we already have size of linked lists
func findMergeInsight(headA: Node?, headB: Node?) -> Int? {
    //figure out which is longer
    //Here we have to find the size with length function - so time is not that much effective
    let sizeA = length(headA)
    let sizeB = length(headB)
    
    let diff = sizeA - sizeB
    
    if diff > 0 {
        return findMergePoint(bigList: (headA, sizeA), smallList: (headB, sizeB), diff: diff)
    }
    
    return findMergePoint(bigList: (headB, sizeB), smallList: (headA, sizeA), diff: abs(diff))
}

private func findMergePoint(bigList: (head: Node?, size: Int), smallList: (head: Node?, size: Int), diff: Int) -> Int? {

    var currentNodeBig = bigList.head
    for _ in 0 ..< diff {
        currentNodeBig = currentNodeBig?.next
    }
    
    var currentNodeSmall = smallList.head
    for _ in 0 ..< smallList.size {
        let bigData = currentNodeBig?.data
        let smallData = currentNodeSmall?.data
        
        if bigData == smallData {
            return bigData
        }
        
        currentNodeBig = currentNodeBig?.next
        currentNodeSmall = currentNodeSmall?.next
    }
    
    return nil
}



// MARK: - Course solution - 3rd approach - O(m + 3n) -> O(m + n)
func findMergePointInsight(headA: Node?, headB: Node?) -> Int? {
    //Figure out which is longer
    let m = length(headA) // O(m)
    let n = length(headB) // O(n)
    
    var currentA = headA
    var currentB = headB
    
    //Swap if necessary
    if n > m {
        let temp = currentA
        currentA = currentB
        currentB = temp
    }
    
    let diff = abs(m - n)
    
    // remove extra length nodes
    for _ in 1 ... diff { // O(n)
        currentA = currentA?.next
    }
    
    while let _ = currentB { // O(n)
        let dataA = currentA?.data
        let dataB = currentB?.data
        if dataA == dataB {
            return dataA
        }
        
        currentA = currentA?.next
        currentB = currentB?.next
    }
    
    return nil
}


// 1 2 3 4 5 6
let node6 = Node(6)
let node5 = Node(5, node6)
let node4 = Node(4, node5)
let node3 = Node(3, node4)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

// 10 11 4 5 6
let node11 = Node(11, node4)
let node10 = Node(10, node11)

printLinkedList(node1)
printLinkedList(node10)

findMergeBrute(headA: node1, headB: node10) // 4

findMergeSpaceTime(headA: node1, headB: node10) // 4

findMergeInsight(headA: node1, headB: node10) // 4
findMergeInsight(headA: node10, headB: node1) // 4

findMergePointInsight(headA: node1, headB: node10) // 4
findMergePointInsight(headA: node10, headB: node1) // 4
