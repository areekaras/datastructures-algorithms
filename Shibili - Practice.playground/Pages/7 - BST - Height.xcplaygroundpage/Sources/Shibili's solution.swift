public class Node {
    var data: Int = 0
    public var left: Node?
    public var right: Node?
    
    public init(_ key: Int) {
        self.data = key
    }
}

public func getBSTHeight(root: Node?) -> Int? {
    guard let _ = root else { return 0 }
    return getHeight(root, 0)
}

private func getHeight(_ node: Node?, _ height: Int) -> Int {
    if node?.left == nil && node?.right == nil {
        return height
    }
    
    var leftHeight = height
    var rightHeight = height
    
    if node?.left != nil {
        leftHeight = getHeight(node?.left, height + 1)
    }
    
    if node?.right != nil {
        rightHeight = getHeight(node?.right, height + 1)
    }
    
    return max(leftHeight, rightHeight)
}
