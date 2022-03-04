import Darwin

public class Node<T> {
    let data: T
    var next: Node?
    
    init(_ data: T) {
        self.data = data
    }
}

public class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: T? {
        return head?.data
    }
    
    public var count = 0
    
    public func append(_ data: T) {
        let newNode = Node(data)
        count += 1
        
        guard head != nil else {
            head = newNode
            tail = newNode
            return
        }
        
        tail?.next = newNode
        tail = newNode
    }
    
    public func removeFirst() -> T? {
        let headData = head?.data
        
        guard head?.next != nil else {
            head = nil
            tail = nil
            count = 0
            return headData
        }
        
        head = head?.next
        count -= 1
        return headData
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = ""
    
        var node = head
        while node != nil {
            text +=  String(describing: node!.data) + ","
            node = node?.next
        }
        
        if !isEmpty { text.removeLast() }
        
        return "[" + text + "]"
    }
}

