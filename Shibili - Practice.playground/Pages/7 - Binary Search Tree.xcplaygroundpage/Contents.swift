
class Node {
    var key: Int
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
        return findMin(root)?.key
    }
    
    // Delete: Three cases
    // 1. No child
    // 2. One child
    // 3. Two children

    // First two are simple. Third is more complex.

    // Case 1: No child - simply remove from tree by nulling it.
    //
    // Case 2: One child - copy the child to the node to be deleted and delete the child

    // Case 3: Two children - re-gig the tree to turn into a Case 1 or a Case 2

    // For third case we first need to
    // 1. Find the right side min
    // 2. Copy it to the node we want to delete (creating a duplicate)
    // 3. Then delete the min value way down on the branch we just copied
    //
    // This works because you can represent a binary tree in more than one way.
    // Here we are taking advantage of that fact to make our more complicated
    // 3rd case delete more simple by transforming it into case 1.
    func delete(key: Int) {
        guard let _ = root else { return }
        root = delete(&root, key)
    }
    
    //MARK: - Depth first traversals - inorder, preorder, postorder
    func printInOrderTraversal() {
        inOrderTraversal(node: root)
    }
    
    func printPreOrderTraversal() {
        preOrderTraversal(node: root)
    }
    
    func printPostOrderTraversal() {
        postOrderTraversal(node: root)
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
    
    private func findMin(_ node: Node?) -> Node? {
        return node?.min
    }
    
    private func delete(_ node: inout Node?, _ key: Int) -> Node? {
        guard node != nil else { return nil }
        
        if key > node!.key {
            node?.right = delete(&node!.right, key)
        } else if key < node!.key {
            node?.left = delete(&node!.left, key)
        } else {
            // Woohoo! Found you. This is the node we want to delete.

            // Case 1: No child
            if node?.left == nil && node?.right == nil {
                node = nil
            }
            
            // Case 2: One child
            else if node?.left == nil {
                node = node?.right
            }
            
            else if node?.right == nil {
                node = node?.left
            }
            
            // Case 3: Two children
            else {
                // Find the minimum node on the right (could also find max on the left)
                let minRight = findMin(node?.right)
                
                // Duplicate it by copying its value here
                node?.key = minRight!.key
                
                // Now go ahead and delete the node we just duplicated (same key)
                node?.right = delete(&node!.right, node!.key)
            }
        }
        
        
        return node
    }
    
    private func inOrderTraversal(node: Node?) {
        guard let node = node else { return }
        inOrderTraversal(node: node.left)
        print(node.key)
        inOrderTraversal(node: node.right)
    }
    
    private func preOrderTraversal(node: Node?) {
        guard let node = node else { return }
        print(node.key)
        preOrderTraversal(node: node.left)
        preOrderTraversal(node: node.right)
    }
    
    private func postOrderTraversal(node: Node?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.left)
        postOrderTraversal(node: node.right)
        print(node.key)
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

//bst.delete(key: 2)
//bst.delete(key: 3)
//bst.delete(key: 5)
//
//bst.prettyPrint()

bst.printInOrderTraversal()
bst.printPreOrderTraversal()
bst.printPostOrderTraversal()
