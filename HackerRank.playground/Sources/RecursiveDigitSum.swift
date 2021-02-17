// https://www.hackerrank.com/challenges/recursive-digit-sum/problem

import Foundation

public func superDigit(n: String, k: Int) -> Int {
    
    var string = n
    var mult = k
    var sum = 0
    
    while string.count > 1 {
        sum = 0
        for char in string {
            sum += Int(String(char))!
        }
        
        sum = sum * mult
        mult = 1
        
        string = String(sum)
    }
    
    return sum
}
