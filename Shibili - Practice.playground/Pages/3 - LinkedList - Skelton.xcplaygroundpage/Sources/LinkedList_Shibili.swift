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

    // O(n) - Shibili's Solution
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

