//Shibili's solution

import Foundation

public class SNode {
    var data: Int
    var next: SNode?
    
    init(_ data: Int, _ next: SNode? = nil) {
        self.data = data
        self.next = next
    }
}

public class SLinkedList: LinkListP {
    private var head: SNode?
    
    public init() { }
        
    // O(1)
    public func addFront(_ data: Int) {
        let newNode = SNode(data, head)
        head = newNode
    }

    // O(1)
    public func getFirst() -> Int? {
        return head?.data
    }

    // O(n)
    public func addBack(_ data: Int) {
        let newNode = SNode(data)
        
        guard let tailNode = tail() else {
            head = newNode
            return
        }
        
        tailNode.next = newNode
    }
    
    // O(n)
    public func tail() -> SNode? {
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
        guard position >= 0 else { fatalError("Out of bound!") }
        
        guard position > 0 else {
            addFront(data)
            return
        }
        
        let newNode = SNode(data)
        var i = position - 1
        var node = head
        
        while let next = node?.next {
            if i == 0 { break }
            node = next
            i -= 1
        }
        
        guard i == 0 else { fatalError("Out of bound!") }
        
        let next = node?.next
        node?.next = newNode
        newNode.next = next
    }
    
    // O(1)
    public func deleteFirst() {
        head = head!.next
    }

    // O(n)
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
    
    // O(n)
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
        if head == nil {
            print("[]")
            return
        }
        
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

