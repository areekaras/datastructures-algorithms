import Foundation

public protocol LinkListP {
    func addFront(_ data: Int)
    
    func getFirst() -> Int?
    
    func addBack(_ data: Int)
    
    func getLast() -> Int?
    
    func insert(position: Int, data: Int)
    
    func printLinkedList()
}
