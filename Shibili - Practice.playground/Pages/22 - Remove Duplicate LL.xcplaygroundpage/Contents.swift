/*
 ___            _ _         _
|   \ _  _ _ __| (_)__ __ _| |_ ___ ___
| |) | || | '_ \ | / _/ _` |  _/ -_|_-<
|___/ \_,_| .__/_|_\__\__,_|\__\___/__/
          |_|

 // Challenge: Write a method that removes any duplicates from our Linked List.
 
 */

func printLinkedListSimple(_ head: Node?) {
    if head == nil { return }
    
    var node = head
    print(node!.data)
    
    while node?.next != nil {
        print(node!.next!.data)
        node = node?.next
    }
}

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

func removeDuplictates(_ head: Node?) {
    // Create a hash table or set to store unique values.
    // Then delete the duplicates as soon as we detect it while walking the list.
    // Algorithm is O(n).
    
    guard head?.next != nil else { return head }
    
    var nodeMap = [head!.data: true]
    var previous = head
    var current = head?.next
    
    while current != nil {
        if nodeMap[current!.data] == true {
            previous?.next = current?.next
        } else {
            nodeMap[current!.data] = true
            previous = current
        }
        current = current?.next
    }
}


let node1dup = Node(1)
let node3 = Node(3, node1dup) // duplicate
let node2dup = Node(2, node3)
let node2 = Node(2, node2dup) // duplicate
let node1 = Node(1, node2)



printLinkedListSimple(node1)
print("===")
removeDuplictates(node1)
printLinkedListSimple(node1)

