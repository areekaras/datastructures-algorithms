
public struct QueueStruct<Element>: QueueProtocol {
    private var arr = [Element]()
    
    public init() { }
    
    public var isEmpty: Bool {
        return arr.isEmpty
    }
    
    public var count: Int {
        return arr.count
    }
    
    public var peek: Element? {
        return arr.first
    }
    
    public mutating func enqueue(_ value: Element) {
        arr.append(value)
    }
    
    public mutating func dequeue() -> Element? {
        return arr.removeFirst()
    }
}

extension QueueStruct: CustomStringConvertible {
    public var description: String {
        return String(describing: arr)
    }
}
