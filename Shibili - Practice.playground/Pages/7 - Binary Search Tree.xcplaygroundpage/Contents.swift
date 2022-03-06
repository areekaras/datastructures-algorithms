
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
