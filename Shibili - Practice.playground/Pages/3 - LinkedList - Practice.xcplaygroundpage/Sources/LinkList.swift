import Foundation

public protocol LinkListP {
    var isEmpty: Bool { get }
    
    func addFront(_ data: Int)
    
    func getFirst() -> Int?
    
    func addBack(_ data: Int)
    
    func getLast() -> Int?
    
    func insert(position: Int, data: Int)
    
    func deleteFirst()
    
    func deleteLast()
    
    func delete(at position: Int)
    
    func clear()
    
    func printLinkedList()
}
