/*
 TreeHeight
 https://app.codility.com/programmers/lessons/99-future_training/tree_height/
 
 Height is the number of steps to the lowest leaf.
 Length of the longest path.
 Tree with one node has height of zero.
   
                    20
                  /    \
                8        22
              /   \
            4       12
                  /    \
                10      14
 */


let root = Node(4)
root.left = Node(2)
root.right = Node(6)
root.left?.left = Node(1)
root.left?.right = Node(3)
root.right?.left = Node(5)
root.right?.right = Node(7)
root.right?.right?.right = Node(8)
root.right?.right?.right?.right = Node(9)

//getBSTHeight(root: root) // 4 // - Shibili's Solution

root.height // 4 // - Course Solution - 1



import XCTest

class Tests: XCTestCase {

    func testHeightOfZero() {
        let root = Node(5)
//        XCTAssertEqual(0, getBSTHeight(root: root)) // - Shibili's Solution
        XCTAssertEqual(0, root.height) // - Course Solution - 1
    }

    func testHeightOfTwo() {
        let root = Node(5)
        root.left = Node(3)
        root.right = Node(10)
        root.left?.left = Node(20)
        root.left?.right = Node(21)
        root.right?.left = Node(1)

//        XCTAssertEqual(2, getBSTHeight(root: root)) // - Shibili's Solution
        XCTAssertEqual(2, root.height) // - Course Solution - 1
    }
    
//    func testHeightOfThree() {
//        let tree = Tree(20)
//        tree.l = Tree(8)
//        tree.r = Tree(22)
//        tree.l?.l = Tree(4)
//        tree.l?.r = Tree(12)
//        tree.l?.r?.l = Tree(10)
//        tree.l?.r?.r = Tree(14)
//
//        XCTAssertEqual(3, solution(tree))
//    }
}

// Infrastructure
class TestObserver: NSObject, XCTestObservation {
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  inFile filePath: String?,
                  atLine lineNumber: Int) {
        assertionFailure(description, line: UInt(lineNumber))
    }
}
let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
Tests.defaultTestSuite.run()
