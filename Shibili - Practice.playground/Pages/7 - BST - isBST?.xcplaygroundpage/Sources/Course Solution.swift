
public class Node {
    var key: Int
    public var left: Node?
    public var right: Node?
    
    public init(_ data: Int) {
        self.key = data
    }
}

public func checkBST(root: Node?) -> Bool {
    return isBST(root, nil, nil)
}

private func isBST(_ node: Node?, _ min: Int?, _ max: Int?) -> Bool {
    // if nil we hit the end of our branch - OK
    guard let node = node else { return true }
    
    // else check if min < parent
    if let min = min, node.key <= min {
        return false
    }
    
    // check if max > parent
    if let max = max, node.key >= max {
        return false
    }
    
    // if min max OK, got to next level passing in min/max and parent
    return isBST(node.left, min, node.key) && isBST(node.right, node.key, max)
}
