
class Node {
    let key: Int
    var left: Node?
    var right: Node?
    
    init(_ key: Int) {
        self.key = key
    }
    
    var min: Node {
        if left == nil {
            return self
        } else {
            return left!.min
        }
    }
}

class BST {
    private var root: Node?
    
    func insert(key: Int) {
        root = insert(root, key)
    }
    
    func find(key: Int) -> Int? {
        guard let root = root else { return nil }
        guard let node = find(root, key) else { return nil }
        
        return node.key
    }
    
    /*
    //Shibili Solution
    func findMin() -> Int? {
        var node = root
        
        while node?.left != nil {
            node = node?.left
        }
        
        return node?.key
    }*/
    
    //Course Solution
    func findMin() -> Int? {
        return root?.min.key
    }
    
    //MARK: - Helpers
    
    private func insert(_ node: Node?, _ key: Int) -> Node? {
        let newNode = Node(key)
        
        guard node != nil else {
            return newNode
        }

        if key > node!.key {
            node?.right = insert(node?.right, key)
        }
        
        if key < node!.key {
            node?.left = insert(node?.left, key)
        }
        
        return node
    }
    
    private func find(_ node: Node?, _ key: Int) -> Node? {
        guard let node = node else { return nil }
        
        if node.key == key {
            return node
        }
        
        if key > node.key {
            return find(node.right, key)
        }
        
        if key < node.key {
            return find(node.left, key)
        }
        
        return nil
        // Note: duplicate keys not allowed so don't need to check
    }
    
    func prettyPrint() {
        // Hard code debug print of bst with depth = 3
        let rootKey = root?.key ?? 0
    
        let rootLeftKey = root?.left == nil ? 0 : root?.left?.key
        let rootRightKey = root?.right == nil ? 0 : root?.right?.key
        
        var rootLeftLeftKey = 0
        var rootLeftRightKey = 0
        
        if root?.left != nil {
            rootLeftLeftKey = root?.left?.left == nil ? 0 : root!.left!.left!.key
            rootLeftRightKey = root?.left?.right == nil ? 0: root!.left!.right!.key
        }
        
        var rootRightLeftKey = 0
        var rootRightRightKey = 0
        
        if root?.right != nil {
            rootRightLeftKey = root?.right?.left == nil ? 0 : root!.right!.left!.key
            rootRightRightKey = root?.right?.right == nil ? 0: root!.right!.right!.key
        }
        
        let str = """
                         \(rootKey)
                       /   \\
                      \(rootLeftKey!)     \(rootRightKey!)
                     / \\   / \\
                    \(rootLeftLeftKey)   \(rootLeftRightKey) \(rootRightLeftKey)   \(rootRightRightKey)
        """
        
        print(str)
    }
}








let bst = BST()
bst.insert(key: 5)
bst.insert(key: 3)
bst.insert(key: 2)
bst.insert(key: 4)
bst.insert(key: 7)
bst.insert(key: 6)
bst.insert(key: 8)

bst.prettyPrint()

bst.find(key: 5)
bst.find(key: 6)
bst.find(key: 10)

bst.findMin()

