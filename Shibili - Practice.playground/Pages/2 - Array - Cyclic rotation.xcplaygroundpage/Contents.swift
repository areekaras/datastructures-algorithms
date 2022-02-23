import Foundation

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given
 
 A = [3, 8, 9, 7, 6]
 K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:
 
 [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 
 */



//MARK: - 1. Shibili Solution - O(n^2)
/*
func solution(A: [Int], K: Int) -> [Int] {
    guard A.count > 1 else { return A }
    
    var rotationCount = K
    var rotatedA = A
    
    while rotationCount > 0 {
        let last = rotatedA.removeLast()
        rotatedA.insert(last, at: 0)
        
        rotationCount -= 1
    }
    
    return rotatedA
}

print(solution(A: [1, 2, 3, 4, 5], K: 1)) // 5 1 2 3 4
print(solution(A: [1, 2, 3, 4, 5], K: 2)) // 4 5 1 2 3
print(solution(A: [1, 2, 3, 4, 5], K: 3)) // 3 4 5 1 2
                  
print(solution(A: [3, 8, 9, 7, 6], K: 3)) // [9, 7, 6, 3, 8]

*/


//MARK: - 2. Course Solution - O(n^2)
func solution(A: [Int], K: Int) -> [Int] {
    guard A.count > 1 else { return A }
    
    var result = A
    
    for _ in 0 ..< K {
        result = rotateRightOnce(result)
    }
    
    return result
}

private func rotateRightOnce(_ A: [Int]) -> [Int] {
    var newA = Array<Int>(repeating: 0, count: A.count)
    
    for i in 0 ..< A.count - 1 {
        newA[i + 1] = A[i]
    }
    newA[0] = A.last!
    
    return newA
}

print(solution(A: [1, 2, 3, 4, 5], K: 1)) // 5 1 2 3 4
print(solution(A: [1, 2, 3, 4, 5], K: 2)) // 4 5 1 2 3
print(solution(A: [1, 2, 3, 4, 5], K: 3)) // 3 4 5 1 2
                  
print(solution(A: [3, 8, 9, 7, 6], K: 3)) // [9, 7, 6, 3, 8]

print(solution(A: [], K: 3))  // []
print(solution(A: [3], K: 3)) // [3]
print(solution(A: [1, 2], K: 3)) // [2, 1]
