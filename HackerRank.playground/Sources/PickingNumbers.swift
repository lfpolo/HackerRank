// https://www.hackerrank.com/challenges/picking-numbers/problem

import Foundation

public func pickingNumbers(a: [Int]) -> Int {
    var dicSequences : [Int : Int] = [:]
    
    for n in 0...101 {
        dicSequences[n] = 0
    }

    for n in a  {
        dicSequences[n] = dicSequences[n]! + 1
        dicSequences[n + 1] = dicSequences[n + 1]! + 1
    }

    var max = 0
    for n in 0...101 {
        if  dicSequences[n]! > max {
            max = dicSequences[n]!
        }
    }

    return max
}
