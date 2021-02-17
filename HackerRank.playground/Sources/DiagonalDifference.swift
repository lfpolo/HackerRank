// https://www.hackerrank.com/challenges/diagonal-difference/problem

import Foundation

public func diagonalDifference(arr: [[Int]]) -> Int {
    var sumD1 = 0
    var sumD2 = 0

    for (i, array) in arr.enumerated()
    {
        sumD1 += array[i]
        sumD2 += array[array.count - 1 - i]
    }

    return abs(sumD1 - sumD2)
}

