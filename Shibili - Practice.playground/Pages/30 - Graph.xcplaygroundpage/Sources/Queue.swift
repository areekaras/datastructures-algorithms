import Foundation

public struct Queue<Element> {
    private var array = [Element]()
    
    public init() { }
    
    public mutating func enqueue(_ value: Element) {
        array.append(value)
    }
    
    public mutating func dequeue() -> Element? {
        array.removeFirst()
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
}
