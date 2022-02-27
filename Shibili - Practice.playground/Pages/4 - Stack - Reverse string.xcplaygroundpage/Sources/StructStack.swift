
public struct StackStruct<Element>: StackProtocol {
    public init() { }
    
    private var arr = [Element]()
    
    public var peek: Element? {
        return arr.last
    }
    
    public var isEmpty: Bool {
        return arr.isEmpty
    }
    
    public var count: Int {
        return arr.count
    }
    
    public mutating func push(_ value: Element) {
        arr.append(value)
    }
    
    public mutating func pop() -> Element? {
        return arr.popLast()
    }
}

extension StackStruct: CustomStringConvertible {
    public var description: String {
        return String(describing: arr)
    }
}

