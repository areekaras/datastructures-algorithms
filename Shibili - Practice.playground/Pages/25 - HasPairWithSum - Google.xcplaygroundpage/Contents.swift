/*
 ___                _
/ __|___  ___  __ _| |___
|(_ / _ \/ _ \/ _` | / -_)
\___\___/\___/\__, |_\___|
              |___/
 
 // https://www.youtube.com/watch?v=XKu_SEDAykw&ab_channel=LifeatGoogle
 
 Given a set of numbers, determine if there is a pair that equals a given sum.
 
 */

//MARK: - Solution 1: Bruteforce method - progressively walk - O(n^2)
func hasPairWithSumBrute(_ arr: [Int], _ sum: Int) -> Bool {
    
    for i in 0 ..< arr.count - 1 {
        for j in i + 1 ..< arr.count {
            if arr[i] + arr[j] == sum { return true }
        }
    }
    
    return false
}

hasPairWithSumBrute([1, 2, 4, 9], 8)     // false
hasPairWithSumBrute([1, 2, 4, 4], 8)     // true
hasPairWithSumBrute([1, 2, 4], 8)        // false



//MARK: - Solution 2 - O(n)
func hasPairWithSum(_ arr: [Int], _ sum: Int) -> Bool {
    
    var comp = Set<Int>()
    
    for item in arr {
        if comp.contains(item) {
            return true
        }
        
        comp.insert(sum - item)
    }
    
    return false
}

hasPairWithSum([1, 2, 4, 9], 8)     // false
hasPairWithSum([1, 2, 4, 4], 8)     // true
hasPairWithSum([1, 2, 4], 8)        // false
