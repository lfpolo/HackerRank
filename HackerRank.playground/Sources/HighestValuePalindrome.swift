// https://www.hackerrank.com/challenges/richie-rich/problem

import Foundation

public func highestValuePalindrome(s: String, n: Int, k: Int) -> String {
    var chars = Array(s)
    let end = n - 1
    var changed : [Bool] = Array(repeating: false, count: n)
    var changes = k
    
    for i in 0...end / 2 {
        if chars[i] != chars[end - i] {
            if changes > 0 {
                if chars[i] > chars[end - i] {
                    chars[end - i] = chars[i]
                    changed[end - i] = true
                } else {
                    chars[i] = chars[end - i]
                    changed[i] = true
                }
                changes -= 1
            } else {
                return "-1"
            }
        }
    }
    
    // Já é palíndromo mas ainda tem trocas a serem feitas
    var i = 0
    while changes > 0 && i <= end / 2 {
        if chars[i] != "9" {
            if changes > 1 {
                if changed[i] || changed[end - i] {
                    changes -= 1
                } else {
                    changes -= 2
                }
                chars[i] = "9"
                chars[end - i] = "9"
            } else {
                if changed[i] || changed[end - i] || i == end - i {
                    chars[i] = "9"
                    chars[end - i] = "9"
                    changes = 0
                }
            }
        }
        i += 1
    }
    
    return String(chars)
}
