//public class Node {
//    var key: Int
//    public var left: Node?
//    public var right: Node?
//    
//    public init(_ data: Int) {
//        self.key = data
//    }
//}
//
//public func checkBST(root: Node?) -> Bool {
//    var keysDict = [Int: Bool]()
//    return isBST(root, keysDict: &keysDict)
//}
//
//private func isBST(_ node: Node?, keysDict: inout [Int: Bool]) -> Bool {
//    guard let node = node else { return true }
//    
//    if keysDict[node.key] == true {
//        return false
//    } else {
//        keysDict[node.key] = true
//    }
//    
//    if let right = node.right , node.key > right.key {
//        return false
//    }
//    
//    if let left = node.left, node.key < left.key {
//        return false
//    }
//    
//    if !isBST(node.left, keysDict: &keysDict) || !isBST(node.right, keysDict: &keysDict) {
//        return false
//    }
//    
//    return true
//}
