/*
 When someone searches their contacts based on a phone number, it's nice when a list
 of contact pops up.
 
 Write an algorithm that searches your contacts for phone number strings, and returns:
  - NO CONTACT if contact can't be found
  - A contact if a contact is found
  - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase

 Answer should be correct. Don't worry about performance.
 */

import Foundation


//MARK: - Shibili Solution - O(n)
/*
public func solution(_ A : [String], _ B : [String], _ P : String) -> String {
    var found = [Int]()
    
    for (index, number) in B.enumerated() {
        if number.contains(P) {
            found.append(index)
        }
    }
    
    guard found.count > 0 else { return "NO CONTACT" }
    
    var first = A[found[0]]
    for index in found {
        if A[index] < first {
            first = A[index]
        }
    }
    
    return first
}

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

solution(A, B, P)   // pom
solution(["sander", "amy", "ann"], ["12345", "23456", "123"], "1")  // ann
solution(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112")   // NO CONTACT

// edge cases
solution([String](), [String](), "")    // NO CONTACT
solution(A, B, "")                      // NO CONTACT

public func solutionDict(_ A : [String], _ B : [String], _ P : String) -> String {
    // 🕹 Game on here
    return ""
}

*/


//MARK: - Course solution
public func solution(_ A : [String], _ B : [String], _ P : String) -> String {
    var result = [String]()
    
    for index in 0 ..< B.count {
        if B[index].contains(P) {
            result.append(A[index])
        }
    }
    
    guard result.count > 0 else { return "NO CONTACT" }
    guard result.count > 1 else { return result.first! }
    
    return result.sorted().first!
}

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

solution(A, B, P)   // pom
solution(["sander", "amy", "ann"], ["12345", "23456", "123"], "1")  // ann
solution(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112")   // NO CONTACT

// edge cases
solution([String](), [String](), "") // NO CONTACT
solution(A, B, "")                   // NO CONTACT
