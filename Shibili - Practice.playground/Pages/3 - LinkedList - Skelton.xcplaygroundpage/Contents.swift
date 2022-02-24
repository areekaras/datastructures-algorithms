//MARK: - Add Front
func addFront(linkedList: LinkListP) {
    linkedList.addFront(3)
    linkedList.addFront(2)
    linkedList.addFront(1)

    linkedList.printLinkedList() // [1, 2, 3]

    linkedList.addFront(4)
    linkedList.printLinkedList() // [4, 1, 2, 3]
}

let linkedList = LinkList()
addFront(linkedList: linkedList)

//MARK: - Get Last
func getFirst(linkedList: LinkListP, line: UInt = #line) {
    print("\(linkedList.getFirst() ?? -999999) at line: \(line)")
}

getFirst(linkedList: linkedList) //4

let linkedList1 = SLinkedList()
getFirst(linkedList: linkedList1) // -99999 = nil


//MARK: - Add Back
func addBack(linkedList: LinkListP, data: [Int]) {
    for item in data {
        linkedList.addBack(item)
    }
    
    linkedList.printLinkedList()
}

addBack(linkedList: linkedList, data: [5, 6])  // [4, 1, 2, 3, 5, 6]
addBack(linkedList: linkedList1, data: [1, 2, 3]) // [1, 2, 3]

//MARK: - Get last
func getLast(linkedList: LinkListP, line: UInt = #line) {
    print("\(linkedList.getLast() ?? -999999) at line: \(line)")
}

getLast(linkedList: linkedList) // 6
getLast(linkedList: linkedList1) //3

let linkedList2 = SLinkedList()
getLast(linkedList: linkedList2) // -99999 = nil


//MARK: - Insert
func insert(linkedList: LinkListP) {
    linkedList.insert(position: 0, data: 0)        // [0]
    linkedList.insert(position: 1, data: 1)        // [0, 1]
    linkedList.insert(position: 2, data: 2)        // [0, 1, 2]
    linkedList.insert(position: 3, data: 3)        // [0, 1, 2, 3]
    linkedList.insert(position: 0, data: -1)       // [-1, 0, 1, 2, 3]
    linkedList.insert(position: 0, data: -2)       // [-1, 0, 1, 2, 3]
    linkedList.insert(position: 2, data: 5)        // [-2, -1, 5, 0, 1, 2, 3]
    linkedList.insert(position: 4, data: 6)        // [-2, -1, 5, 0, 6, 1, 2, 3]
//    linkedList2.insert(position: 10, data: 10)      // Crash!!
    linkedList.printLinkedList()
}

insert(linkedList: linkedList2)

let linkedList3 = LinkList()
insert(linkedList: linkedList3)
