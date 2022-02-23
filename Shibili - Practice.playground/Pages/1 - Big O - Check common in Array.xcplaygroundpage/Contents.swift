/*
 Given two arrays, create a function that let's a user know whether these two arrays contain any common items.
 */

//complexity - quadratic - O(n^2)
func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0 ..< A.count {
        for j in 0 ..< B.count {
            if A[i] == B[j] { return true }
        }
    }
    
    return false
}

commonItemsBrute([1, 2, 3], [4, 5, 6]) //false
commonItemsBrute([1, 2, 3], [3, 5, 6]) //true



//complexity - Linear - O(n)
func commonItemsHash(_ A: [Int], _ B: [Int]) -> Bool {
    var hashTable = [Int: Bool]()
    
    for a in A {
        hashTable[a] = true
    }
    
    for b in B {
        if hashTable[b] == true { return true }
    }
    
    return false
}

commonItemsBrute([1, 2, 3], [4, 5, 6]) //false
commonItemsBrute([1, 2, 3], [3, 5, 6]) //true
