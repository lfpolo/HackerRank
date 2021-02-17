// https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

public func miniMaxSum(arr: [Int]) -> Void {
    var minIndex = 0
    var maxIndex = 0
    var sum = 0

    for i in 0...arr.count - 1 {
        if arr[i] < arr[minIndex] {
            minIndex = i
        } else if arr[i] > arr[maxIndex] {
            maxIndex = i
        }
        sum += arr[i]
    }

    print(sum - arr[maxIndex], sum - arr[minIndex])

}
