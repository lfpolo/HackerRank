// https://www.hackerrank.com/challenges/plus-minus/problem

import Foundation

func plusMinus(arr: [Int]) -> Void {
    var positives: Float = 0
    var negatives: Float = 0
    var zero: Float = 0

    for n in arr {
        if n > 0 {
            positives += 1
        } else if n < 0 {
            negatives += 1
        } else {
            zero += 1
        }
    }

    let total : Float = positives + negatives + zero

    print(String(format: "%.6f", positives/total))
    print(String(format: "%.6f", negatives/total))
    print(String(format: "%.6f", zero/total))
}
