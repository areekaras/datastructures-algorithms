import Foundation

public class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

public class LinkList: LinkListP {
    private var head: Node?
    
    public init() { }
        
    // O(1)
    public func addFront(_ data: Int) {
        let newNode = Node(data, head)
        head = newNode
    }

    // O(1)
    public func getFirst() -> Int? {
        return head?.data
    }

    // O(n)
    public func addBack(_ data: Int) {
        let newNode = Node(data)
        
        guard let tailNode = tail() else {
            head = newNode
            return
        }
        
        tailNode.next = newNode
    }
    
    // O(n)
    public func tail() -> Node? {
        guard let head = head else { return nil }
        
        var node = head
        while let next = node.next {
            node = next
        }
        return node
    }

    // O(n)
    public func getLast() -> Int? {
        return tail()?.data
    }

    // O(n)
    public func insert(position: Int, data: Int) {
        
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
    
    public func printLinkedList() {
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


