import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkList {
    private var head: Node?
        
    // O(1)
    func addFront(_ data: Int) {
        let newNode = Node(data, head)
        head = newNode
    }

    // O(1)
    func getFirst() -> Int? {
        return head?.data
    }

    // O(n)
    func addBack(_ data: Int) {
        let newNode = Node(data)
        
        guard let tailNode = tail() else {
            head = newNode
            return
        }
        
        tailNode.next = newNode
    }
    
    // O(n)
    func tail() -> Node? {
        guard let head = head else { return nil }
        
        var node = head
        while let next = node.next {
            node = next
        }
        return node
    }


    func getLast() -> Int? {
        return nil
    }

    func insert(position: Int, data: Int) {
    }
    
    func deleteFirst() {
    }

    func deleteLast() {
    }
    
    func delete(at position: Int) {
    }
    
    var isEmpty: Bool {
        return false
    }
    
    func clear() {
    }
    
    func printLinkedList() {
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
}

//MARK: - Add Front
let linkedList = LinkList()
linkedList.addFront(3)
linkedList.addFront(2)
linkedList.addFront(1)

linkedList.printLinkedList() // [1, 2, 3]

linkedList.addFront(4)
linkedList.printLinkedList() // [4, 1, 2, 3]

//MARK: - Get Last
linkedList.getFirst() //4


//MARK: - Add Back
linkedList.addBack(5)
linkedList.addBack(6)

linkedList.printLinkedList() // [4, 1, 2, 3, 5, 6]

let linkedList1 = LinkList()
linkedList1.addBack(1)
linkedList1.addBack(2)
linkedList1.addBack(3)
linkedList1.printLinkedList() // [1, 2, 3]
