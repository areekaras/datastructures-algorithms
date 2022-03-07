
//MARK: -  Shibili's solution
/*
func bubbleSort(_ array: [Int]) -> [Int] {
    var newArr = array
    
    for i in 0 ..< array.count - 1 {
        for j in i + 1 ..< array.count {
            if newArr[i] > newArr[j] {
                let temp = newArr[i]
                newArr[i] = newArr[j]
                newArr[j] = temp
            }
        }
    }
    
    return newArr
}

bubbleSort([5, 4, 3, 2, 1])
*/



//MARK: -  Course solution

func bubbleSort(_ array: [Int]) -> [Int] {
    var newArr = array
    let n = array.count
    
    for i in 0 ..< n - 1 {
        for j in 0 ..< n-i-1 {
            if newArr[j] > newArr[j+1] {
                let temp = newArr[j]
                newArr[j] = newArr[j+1]
                newArr[j+1] = temp
            }
        }
    }
    
    return newArr
}

bubbleSort([5, 4, 3, 2, 1])
