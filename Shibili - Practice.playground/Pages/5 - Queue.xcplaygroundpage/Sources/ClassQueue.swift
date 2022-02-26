
public final class Queue<Element>: QueueProtocol {
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
    
    public func enqueue(_ value: Element) {
        arr.append(value)
    }
    
    public func dequeue() -> Element? {
        return arr.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return String(describing: arr)
    }
}
