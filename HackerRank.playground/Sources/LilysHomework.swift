// https://www.hackerrank.com/challenges/lilys-homework/problem

import Foundation

public func lilysHomework(arr: [Int]) -> Int {
    let sortedArray = arr.sorted()
    let reverseSortedArray = Array(sortedArray.reversed())
    var arrCopy = arr
    var swaps = 0
    var reverseSwaps = 0
    var auxValue = 0
    
    var dicIndexes : [Int : Int] = [:]
    for (i, item) in arr.enumerated() {
        dicIndexes[item] = i
    }
    
    for i in 0...arr.count - 1 {
        if i != dicIndexes[sortedArray[i]] {
            let indexInArrCopy = dicIndexes[sortedArray[i]]!
            
            auxValue = arrCopy[i]
            arrCopy[i] = arrCopy[indexInArrCopy]
            arrCopy[indexInArrCopy] = auxValue
            
            dicIndexes[arrCopy[i]] = i
            dicIndexes[arrCopy[indexInArrCopy]] = indexInArrCopy
            
            swaps += 1
        }
    }
    
    dicIndexes = [:]
    for (i, item) in arr.enumerated() {
        dicIndexes[item] = i
    }
    arrCopy = arr
    
    for i in 0...arr.count - 1 {
        if i != dicIndexes[reverseSortedArray[i]] {
            let indexInArrCopy = dicIndexes[reverseSortedArray[i]]!
            
            auxValue = arrCopy[i]
            arrCopy[i] = arrCopy[indexInArrCopy]
            arrCopy[indexInArrCopy] = auxValue
            
            dicIndexes[arrCopy[i]] = i
            dicIndexes[arrCopy[indexInArrCopy]] = indexInArrCopy
            
            reverseSwaps += 1
        }
    }
    
    return min(swaps, reverseSwaps)
}
