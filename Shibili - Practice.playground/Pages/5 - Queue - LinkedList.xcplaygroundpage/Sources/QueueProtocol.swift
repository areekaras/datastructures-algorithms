public protocol QueueProtocol {
    associatedtype Element
    
    init()
    
    var isEmpty: Bool { get }
    var count: Int { get }
    var peek: Element? { get }
    
    mutating func enqueue(_ value: Element)
    mutating func dequeue() -> Element?
}
