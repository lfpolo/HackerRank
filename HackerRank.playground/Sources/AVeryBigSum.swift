// https://www.hackerrank.com/challenges/a-very-big-sum/problem

import Foundation

public func aVeryBigSum(ar: [Int]) -> Int {
    var sum : Int = 0
    for number in ar
    {
        sum += number
    }

    return sum
}
