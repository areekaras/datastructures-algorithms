public protocol StackProtocol {
    associatedtype Element
    
    var peek: Element? { get }
    var isEmpty: Bool { get }
    var count: Int { get }
    
    mutating func push(_ value: Element)
    mutating func pop() -> Element?
}

