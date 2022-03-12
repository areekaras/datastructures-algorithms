/*
 ___            _              _
| __|_ _ __ ___| |__  ___  ___| |__
| _/ _` / _/ -_) '_ \/ _ \/ _ \ / /
|_|\__,_\__\___|_.__/\___/\___/_\_\

 Determine which elements intersect between two given arrays.
 
 */

//MARK: - Solution 1 - Bruteforce method - O(m*n)
func intersectBrute(_ A: [Int], _ B: [Int]) -> [Int] {
    var result = [Int]()
    
    for a in A {
        for b in B {
            if a == b {
                result.append(a)
            }
        }
    }
    
    return result
}

intersectBrute([1, 2, 4, 5, 6], [2, 3, 5, 7]) // [2, 5]


//MARK: - Shibili's Solution - Set/HashMap - O(m+n)
//func intersectSet(_ A: [Int], _ B: [Int]) -> [Int] {
//    var result = [Int]()
//    var smallArray = A
//    var bigArray = B
//
//    if A.count > B.count {
//        smallArray = B
//        bigArray = A
//    }
//
//    var smallArraySet = Set<Int>()
//    for number in smallArray { // O(m)
//        smallArraySet.insert(number)
//    }
//
//    for number in bigArray { // O(n)
//        if smallArraySet.contains(number) {
//            result.append(number)
//        }
//    }
//
//    return result
//}
//
//intersectSet([1, 2, 4, 5, 6], [2, 3, 5, 7]) // [2, 5]



//MARK: - Solution 3 - Two pointers method - O(m+n) for already sorted
func intersect(_ A: [Int], _ B: [Int]) -> [Int] {
    // create two pointers and loop through both arrays
    // if one element is less than the other...
    //   increment the lower pointer
    // if elements are equal collect
    // then increment either of the pointers
    
    var result = [Int]()
    
    var indexA = 0
    var indexB = 0
    
    while indexA < A.count && indexB < B.count {
        if A[indexA] > B[indexB] {
            indexB += 1
        } else if A[indexA] < B[indexB] {
            indexA += 1
        } else {
            result.append(A[indexA])
            indexA += 1
        }
    }
    
    return result
}


intersect([1, 2, 4, 5, 6], [2, 3, 5, 7]) // [2, 5]
