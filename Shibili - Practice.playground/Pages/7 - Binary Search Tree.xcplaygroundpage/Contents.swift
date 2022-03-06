import XCTest

class BSTTests: XCTestCase {
    var bst: BST!
    override func setUp() {
        super.setUp()
        bst = BST()
    }
    
    func testInsert() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
        bst.insert(key: 8)

        bst.prettyPrint()

        XCTAssertNotNil(bst.find(key: 5))
        XCTAssertNotNil(bst.find(key: 3))
        XCTAssertNotNil(bst.find(key: 2))
        XCTAssertNotNil(bst.find(key: 4))
        XCTAssertNotNil(bst.find(key: 7))
        XCTAssertNotNil(bst.find(key: 6))
        XCTAssertNotNil(bst.find(key: 8))
    }

    func testDeleteNoChild() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
        bst.insert(key: 8)

        XCTAssertNotNil(bst.find(key: 2))
        bst.delete(key: 2)
        XCTAssertNil(bst.find(key: 2))

        XCTAssertNotNil(bst.find(key: 5))
        XCTAssertNotNil(bst.find(key: 3))
        XCTAssertNotNil(bst.find(key: 4))
        XCTAssertNotNil(bst.find(key: 7))
        XCTAssertNotNil(bst.find(key: 6))
        XCTAssertNotNil(bst.find(key: 8))
    }

    func testDeleteOneChild() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
//        bst.insert(key: 8)

        XCTAssertNotNil(bst.find(key: 2))
        bst.delete(key: 7)
        XCTAssertNil(bst.find(key: 7))

        XCTAssertNotNil(bst.find(key: 5))
        XCTAssertNotNil(bst.find(key: 3))
        XCTAssertNotNil(bst.find(key: 4))
        XCTAssertNotNil(bst.find(key: 6))
    }

    func testDeleteTwoChildren() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
        bst.insert(key: 8)

        XCTAssertNotNil(bst.find(key: 2))
        bst.delete(key: 7)
        XCTAssertNil(bst.find(key: 7))

        XCTAssertNotNil(bst.find(key: 5))
        XCTAssertNotNil(bst.find(key: 3))
        XCTAssertNotNil(bst.find(key: 4))
        XCTAssertNotNil(bst.find(key: 6))
        XCTAssertNotNil(bst.find(key: 8))
    }
}


// Infrastructure for running unit tests

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
BSTTests.defaultTestSuite.run()
