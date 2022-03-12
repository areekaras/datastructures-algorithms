/*
 ___      _    _
/ __|_  _| |__| |_ _ _ ___ ___
\__ \ || | '_ \  _| '_/ -_) -_)
|___/\_,_|_.__/\__|_| \___\___|

 // Challenge: T1 is a large binary tree and T2 is a smaller one. Write an
 // algorithm to determine if T2 is a subtree of T1.

 Root
                5
              3   7
             2 4 6  8
                   9 10
                      12
 
 Subtree
                7
               6  8
                   10
 */

class Node {
    var key: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.key = data
    }
}

//MARK: - Shibili's Solution
//func isSubTree(_ tree: Node, _ subTree: Node) -> Bool {
//
//    // find the root node of subtree in the tree
//    // traverse through subtree nodes and check existance in tree
//    // if false return false
//    // return true at the end of traversal
//
//    //Find the subtree root node in tree and return tree node
//    guard let treeNode = get(subTree, in: tree) else { return false }
//
//    //Traverse subtree
//    return check(subTree.left, isSameAs: treeNode.left) && check(subTree.right, isSameAs: treeNode.right)
//}
//
//private func get(_ node: Node, in tree: Node?) -> Node? {
//    guard let tree = tree else { return nil }
//
//    if node.key == tree.key { return tree }
//
//    if node.key > tree.key {
//        return get(node, in: tree.right)
//    } else if node.key < tree.key {
//        return get(node, in: tree.left)
//    }
//
//    return nil
//}
//
//private func check(_ subTree: Node?, isSameAs tree: Node?) -> Bool {
//    guard subTree != nil else { return true }
//
//    if subTree?.key != tree?.key { return false }
//
//    return check(subTree?.left, isSameAs: tree?.left) && check(subTree?.right, isSameAs: tree?.right)
//}

//MARK: - Course Solution
import Foundation

func isSubTree(_ tree: Node, _ subTree: Node) -> Bool {
    let treeOrder = getOrder(tree)
    let subTreeOrder = getOrder(subTree)
    
    return treeOrder.contains(subTreeOrder)
}

private func getOrder(_ tree: Node) -> String {
    var result = ""
    preOrderTraversal(tree, &result)
    return result
}

private func preOrderTraversal(_ node: Node?, _ result: inout String) {
    guard let node = node else { return }
    
    result += String(node.key)
    preOrderTraversal(node.left, &result)
    preOrderTraversal(node.right, &result)
}


let root = Node(5)
root.left = Node(3)
root.right = Node(7)
root.left?.left = Node(2)
root.left?.right = Node(4)
root.right?.left = Node(6)
root.right?.right = Node(8)

let subTree = Node(7)
subTree.left = Node(6)
subTree.right = Node(8)

isSubTree(root, subTree)




//Course Solution is false for this case but true for shibil's solution - confirm whether this is false or not
//let root = Node(5)
//root.left = Node(3)
//root.right = Node(7)
//root.left?.left = Node(2)
//root.left?.right = Node(4)
//root.right = Node(7)
//root.right?.left = Node(6)
//root.right?.right = Node(8)
//root.right?.right?.left = Node(9)
//root.right?.right?.right = Node(10)
//root.right?.right?.right?.right = Node(12)
//
//let subTree = Node(7)
//subTree.left = Node(6)
//subTree.right = Node(8)
//subTree.right?.right = Node(10)
//
//isSubTree(root, subTree)
