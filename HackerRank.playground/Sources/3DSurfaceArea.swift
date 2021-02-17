// https://www.hackerrank.com/challenges/3d-surface-area/problem

import Foundation

public func surfaceArea(A: [[Int]]) -> Int {
    var surface = 0
    for i in 0...A.count - 1 {
        for j in 0...A[i].count - 1 {
            surface += 2
            
            if i == 0 { surface += A[i][j] }
            else if A[i][j] > A[i - 1][j] { surface += A[i][j] - A[i - 1][j] }
            
            if i == A.count - 1 { surface += A[i][j] }
            else if A[i][j] > A[i + 1][j] { surface += A[i][j] - A[i + 1][j] }
            
            if j == 0 { surface += A[i][j] }
            else if A[i][j] > A[i][j - 1] { surface += A[i][j] - A[i][j - 1]}
            
            if j == A[i].count - 1 { surface += A[i][j] }
            else if A[i][j] > A[i][j + 1] { surface += A[i][j] - A[i][j + 1] }
        }
    }
    return surface
}
