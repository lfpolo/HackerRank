// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

func staircase(n: Int) -> Void {
    for i in 0...n - 1 {
        var strLine = ""
        for j in 0...n - 1 {
            if j < n - i - 1 {
                strLine = strLine + " "
            } else {
                strLine = strLine + "#"
            }
        }
        print(strLine)
    }
}
