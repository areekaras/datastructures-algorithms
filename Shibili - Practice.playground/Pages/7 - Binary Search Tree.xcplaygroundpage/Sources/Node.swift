
public class Node {
    public var key: Int
    public var left: Node?
    public var right: Node?
    
    public init(_ key: Int) {
        self.key = key
    }
    
    public var min: Node {
        if left == nil {
            return self
        } else {
            return left!.min
        }
    }
}
