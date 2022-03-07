// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Merge%20Sort


func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let midIndex = array.count / 2
    
    let leftArray = mergeSort(array: Array(array[0 ..< midIndex]))
    let rightArray = mergeSort(array: Array(array[midIndex ..< array.count]))
    
    return merge(leftArray, rightArray)
}

private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    
    var result = [Int]()
    result.reserveCapacity(left.count + right.count)
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        }
        else if left[leftIndex] > right[rightIndex] {
            result.append(right[rightIndex])
            rightIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
            result.append(left[leftIndex])
            leftIndex += 1
        }
    }
    
    while leftIndex < left.count {
        result.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        result.append(right[rightIndex])
        rightIndex += 1
    }
    
    return result
}


mergeSort(array: [5, 4, 3, 2, 1])
mergeSort(array: [3, 5, 5, 5, 5])
