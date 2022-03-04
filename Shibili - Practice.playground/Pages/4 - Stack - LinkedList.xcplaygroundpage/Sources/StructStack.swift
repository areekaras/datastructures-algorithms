
public struct Stack<Element>: StackProtocol {
    private var linkedList = LinkedList<Element>()
    
    public init() { }
    
    // O(1)
    public var peek: Element? {
        return linkedList.first
    }
    
    // O(1)
    public var isEmpty: Bool {
        return linkedList.isEmpty
    }
    
    // O(1)
    public var count: Int {
        return linkedList.count
    }
    
    // O(1)
    public mutating func push(_ value: Element) {
        linkedList.append(value)
    }
    
    // O(1)
    public mutating func pop() -> Element? {
        linkedList.removeFirst()
    }
}

extension Stack: CustomStringConvertible {
    // O(n)
    public var description: String {
        return linkedList.description
    }
}
