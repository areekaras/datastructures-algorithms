class Node<T> {
    let data: T
    var next: Node?
    
    init(data: T) {
        self.data = data
    }
}

public class LinkedList<T> {
    private var head: Node<T>?
    
    public var first: T? {
        return head?.data
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int = 0
    
    public func append(_ data: T) {
        let newNode = Node(data: data)
        
        newNode.next = head
        head = newNode
        count += 1
    }
    
    public func removeFirst() -> T? {
        guard let next = head?.next else {
            let data = head?.data
            head = nil
            count = 0
            return data
        }
        
        let removingHeadData = head?.data
        head = next
        count -= 1
        return removingHeadData
    }
    
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = ""
    
        var node = head
        while node != nil {
            text = "," + String(describing: node!.data) + text
            node = node?.next
        }
        
        if !isEmpty { text.removeFirst() }
        
        return "[" + text + "]"
    }
}
