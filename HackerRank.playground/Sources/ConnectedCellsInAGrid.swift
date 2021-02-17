// https://www.hackerrank.com/challenges/connected-cell-in-a-grid/problem

import Foundation

var usedCells : [[Bool]] = []
var matrixCopy: [[Int]] = []

func regionSize(i : Int, j : Int) -> Int {
    if i < 0 || j < 0 || i >= matrixCopy.count || j >= matrixCopy[0].count {
        return 0
    }

    if matrixCopy[i][j] == 0 || usedCells[i][j] {
        return 0
    } else {
        usedCells[i][j] = true
        return 1 +
            regionSize(i: i + 1, j: j) +
            regionSize(i: i + 1, j: j - 1) +
            regionSize(i: i + 1, j: j + 1) +
            regionSize(i: i, j: j + 1) +
            regionSize(i: i, j: j - 1) +
            regionSize(i: i - 1, j: j + 1) +
            regionSize(i: i - 1, j: j - 1) +
            regionSize(i: i - 1, j: j)
    }
}

public func connectedCell(matrix: [[Int]]) -> Int {
    var maxSize = 0
    matrixCopy = matrix

    for i in 0...matrix.count - 1 {
        usedCells.append([])
        for _ in 0...matrix[i].count - 1 {
            usedCells[i].append(false)
        }
    }

    for i in 0...matrix.count - 1 {
        for j in 0...matrix[i].count - 1 {
             maxSize = max(maxSize, regionSize(i: i, j: j))
        }
    }

    return maxSize
}
