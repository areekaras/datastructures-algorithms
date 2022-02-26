public class Stack<Element>: StackProtocol {
    private var arr = [Element]()
    
    public init() { }
    
    public func push(_ value: Element) {
        arr.append(value)
    }
    
    public func pop() -> Element? {
        return arr.popLast()
    }
    
    public var peek: Element? {
        return arr.last
    }
    
    public var isEmpty: Bool {
        return arr.isEmpty
    }
    
    public var count: Int {
        return arr.count
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return String(describing: arr)
    }
}

