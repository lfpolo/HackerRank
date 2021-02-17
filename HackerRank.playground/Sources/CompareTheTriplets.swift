// https://www.hackerrank.com/challenges/compare-the-triplets/problem

import Foundation

public func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result : [Int] = [0,0]
    if a[0] > b[0] {
        result[0] += 1
    } else if a[0] < b[0] {
        result[1] += 1
    }

    if a[1] > b[1] {
        result[0] += 1
    } else if a[1] < b[1] {
        result[1] += 1
    }

    if a[2] > b[2] {
        result[0] += 1
    } else if a[2] < b[2] {
        result[1] += 1
    }

    return result
}

