public class Node {
    var data: Int = 0
    public var left: Node?
    public var right: Node?
    
    public init(_ key: Int) {
        self.data = key
    }
    
    public var height: Int {
        if isLeaf {
            return 0
        } else {
            return 1 + max(left?.height ?? 0, right?.height ?? 0)
        }
    }
    
    private var isLeaf: Bool {
        return left == nil && right == nil
    }
}
