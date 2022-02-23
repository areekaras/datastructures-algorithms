

class Node {
    let data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

let node3 = Node(3)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

func printLinkedListValues(_ head: Node?) {
    guard let head = head else { return }
    
    var node = head
    print(node.data)
    
    while let next = node.next {
        print(next.data)
        node = next
    }
}

printLinkedListValues(node1) // 1 \n 2 \n 3
