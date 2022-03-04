
public struct Queue<Element>: QueueProtocol {
    private var linkedList = LinkedList<Element>()
    
    public init() { }
    
    // O(1)
    public var isEmpty: Bool {
        return linkedList.isEmpty
    }
    
    // O(1)
    public var count: Int {
        return linkedList.count
    }
    
    // O(1)
    public var peek: Element? {
        return linkedList.first
    }
    
    // O(1)
    public mutating func enqueue(_ value: Element) {
        linkedList.append(value)
    }
    
    // O(1)
    public mutating func dequeue() -> Element? {
        return linkedList.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return linkedList.description
    }
}
