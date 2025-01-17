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
        guard position >= 0 else { fatalError("Negative Index") }
        
        guard position > 0 else {
            addFront(data)
            return
        }
        
        let newNode = Node(data)
        var currentNode = head
        
        for _ in 0 ..< position - 1 {
            currentNode = currentNode?.next!
        }
        
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    // O(1) - Used shibili solution
    public func deleteFirst() {
        head = head!.next
    }

    // O(n) - Used shibili solution
    public func deleteLast() {
        guard let _ = head!.next else {
            head = nil
            return
        }
        
        var node = head
        
        while node?.next?.next != nil {
            node = node?.next
        }
        
        node?.next = nil
    }
    
    // O(n) - Used shibili solution
    public func delete(at position: Int) {
        guard position >= 0 else { fatalError("Negative index error!") }
        
        guard position > 0 else {
            deleteFirst()
            return
        }
        
        var prev = head
        
        for _ in 0 ..< position - 1 {
            prev = prev!.next
        }
        
        prev?.next = prev?.next!.next
    }
    
    // O(1)
    public var isEmpty: Bool {
        return head == nil
    }
    
    // O(1)
    public func clear() {
        head = nil
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


