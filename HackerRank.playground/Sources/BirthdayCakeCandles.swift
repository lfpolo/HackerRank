// https://www.hackerrank.com/challenges/birthday-cake-candles/problem
import Foundation

public func birthdayCakeCandles(candles: [Int]) -> Int {
    var max = 0
    var count = 0
    for number in candles {
        if number > max {
            max = number
            count = 1
        } else if number == max {
            count += 1
        }
    }

    return count
}
