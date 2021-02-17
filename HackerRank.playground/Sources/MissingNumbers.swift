import Foundation

///problem: https://www.hackerrank.com/challenges/missing-numbers/problem

public func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
    var resultA : [Int: Int] = [:]
    var resultB : [Int: Int] = [:]
    var result : [Int] = []
    
    for n in arr {
        if resultA[n] != nil {
            resultA[n]! += 1
        } else {
            resultA[n] = 1
        }
    }
    
    for n in brr {
        if resultB[n] != nil {
            resultB[n]! += 1
        } else {
            resultB[n] = 1
        }
    }
 
    for (n, _) in resultB {
        if resultA[n] != resultB[n] {
            result.append(n)
        }
    }
    
    return result.sorted()
}
