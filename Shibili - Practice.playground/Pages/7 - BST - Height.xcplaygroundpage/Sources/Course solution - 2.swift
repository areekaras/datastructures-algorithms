public class Tree {
    private var data: Int
    public var left: Tree?
    public var right: Tree?
    
    public init(_ data: Int) {
        self.data = data
    }
}

public func height(of tree: Tree?) -> Int {
    if isLeaf(tree) {
        return 0
    } else {
        return 1 + max(height(of: tree?.left), height(of: tree?.right))
    }
}

private func isLeaf(_ tree: Tree?) -> Bool {
    return tree?.left == nil && tree?.right == nil
}
