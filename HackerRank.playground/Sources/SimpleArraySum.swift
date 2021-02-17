// https://www.hackerrank.com/challenges/simple-array-sum/problem

import Foundation

public func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    for n in ar {
        sum += n
    }
    return sum
}
