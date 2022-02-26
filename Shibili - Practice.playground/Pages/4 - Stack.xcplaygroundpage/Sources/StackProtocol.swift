public protocol StackProtocol {
    associatedtype Element
    
    var peek: Element? { get }
    var isEmpty: Bool { get }
    var count: Int { get }
    
    func push(_ value: Element)
    func pop() -> Element?
}

