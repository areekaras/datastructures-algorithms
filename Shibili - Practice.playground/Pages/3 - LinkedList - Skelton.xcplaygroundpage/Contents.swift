//MARK: - Add Front
func addFront(linkedList: LinkListP) {
    linkedList.addFront(3)
    linkedList.addFront(2)
    linkedList.addFront(1)

    linkedList.printLinkedList() // [1, 2, 3]

    linkedList.addFront(4)
    linkedList.printLinkedList() // [4, 1, 2, 3]
}

let cLinkedList = LinkList()
addFront(linkedList: cLinkedList)

//MARK: - Get Last
func getFirst(linkedList: LinkListP, line: UInt = #line) {
    print("\(linkedList.getFirst() ?? -999999) at line: \(line)")
}

getFirst(linkedList: cLinkedList) //4

let sLinkedList = SLinkedList()
getFirst(linkedList: sLinkedList) // -99999 = nil


//MARK: - Add Back
func addBack(linkedList: LinkListP, data: [Int]) {
    for item in data {
        linkedList.addBack(item)
    }
    
    linkedList.printLinkedList()
}

addBack(linkedList: cLinkedList, data: [5, 6])  // [4, 1, 2, 3, 5, 6]
addBack(linkedList: sLinkedList, data: [1, 2, 3]) // [1, 2, 3]

//MARK: - Get last
func getLast(linkedList: LinkListP, line: UInt = #line) {
    print("\(linkedList.getLast() ?? -999999) at line: \(line)")
}

getLast(linkedList: cLinkedList) // 6
getLast(linkedList: sLinkedList) //3

let sLinkedList1 = SLinkedList()
getLast(linkedList: sLinkedList1) // -99999 = nil


//MARK: - Insert at position
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

insert(linkedList: sLinkedList1)

let cLinkedList1 = LinkList()
insert(linkedList: cLinkedList1)


//MARK: - Delete first
func deleteFirst(linkedList: LinkListP) {
    linkedList.deleteFirst()
    
    linkedList.printLinkedList()
}

deleteFirst(linkedList: sLinkedList1) // [-1, 5, 0, 6, 1, 2, 3]
deleteFirst(linkedList: sLinkedList1) // [5, 0, 6, 1, 2, 3]

let sLinkedList2 = SLinkedList()
//deleteFirst(linkedList: sLinkedList2) // Crash


//MARK: - Delete last
func deleteLast(linkedList: LinkListP) {
    linkedList.deleteLast()
    
    linkedList.printLinkedList()
}

deleteLast(linkedList: sLinkedList1) // [5, 0, 6, 1, 2]
deleteLast(linkedList: sLinkedList1) // [5, 0, 6, 1]

//deleteLast(linkedList: sLinkedList2) // Crash

//MARK: - Delete at position
func delete(_ linkedList: LinkListP, at position: Int) {
    linkedList.delete(at: position)
    
    linkedList.printLinkedList()
}

//set up linkedList
insert(linkedList: sLinkedList1) // [-2, -1, 5, 0, 6, 1, 2, 3, 5, 0, 6, 1]

delete(sLinkedList1, at: 0)     // [-1, 5, 0, 6, 1, 2, 3, 5, 0, 6, 1]
delete(sLinkedList1, at: 10)    // [-1, 5, 0, 6, 1, 2, 3, 5, 0, 6]
delete(sLinkedList1, at: 6)     // [-1, 5, 0, 6, 1, 2, 5, 0, 6]
//delete(sLinkedList1, at: 9)  // Crash
delete(sLinkedList1, at: 8)     // [-1, 5, 0, 6, 1, 2, 5, 0]
delete(sLinkedList1, at: 7)     // [-1, 5, 0, 6, 1, 2, 5]
delete(sLinkedList1, at: 6)     // [-1, 5, 0, 6, 1, 2]
delete(sLinkedList1, at: 5)     // [-1, 5, 0, 6, 1]
delete(sLinkedList1, at: 4)     // [-1, 5, 0, 6]
delete(sLinkedList1, at: 3)     // [-1, 5, 0]
delete(sLinkedList1, at: 2)     // [-1, 5]
delete(sLinkedList1, at: 1)     // [-1]
delete(sLinkedList1, at: 0)     // []
//delete(sLinkedList1, at: 0)     // Crash

//delete(sLinkedList2, at: 0) // Crash
