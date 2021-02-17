// https://www.hackerrank.com/challenges/matrix-rotation-algo/problem

import Foundation

func printMatrix(matrix: [[Int]]) {
    for i in 0...matrix.count - 1 {
        var strLine = ""
        for j in 0...matrix[i].count - 1 {
            strLine += String(matrix[i][j]) + " "
        }
        print(strLine)
    }
}

func arrayPosToMatrixPos(arrayPos : Int, rowHeight : Int, colWidth : Int, rotationStep : Int) -> (Int, Int) {
    let rowSize = rowHeight - 2 * rotationStep
    let colSize = colWidth - 2 * rotationStep
    
    let pos = arrayPos % (2 * (rowSize - 1 + colSize - 1))
    
    if pos < rowSize - 1 {
        return (rotationStep + pos, rotationStep)
    } else if pos < rowSize - 1 + colSize - 1 {
        return (rowHeight - rotationStep - 1, pos + rotationStep - rowSize + 1)
    } else if pos < (rowSize - 1) + (colSize - 1) + (rowSize - 1) {
        return (rowHeight - rotationStep - 1 - (pos - (rowSize - 1 + colSize - 1)), colWidth - rotationStep - 1)
    } else {
        return (rotationStep, colWidth - rotationStep - 1 - (pos - (rowSize - 1 + colSize - 1 + rowSize - 1)))
    }
}

public func matrixRotation(matrix: [[Int]], r: Int) -> Void {
    var auxMatrix = matrix
    let totalSteps = min(matrix.count / 2 - 1, matrix[0].count / 2 - 1)
    for rotationStep in 0...totalSteps {
        var count = 0
        for i in rotationStep...matrix.count - 1 - rotationStep - 1 {
            let newPos = arrayPosToMatrixPos(arrayPos: r + count, rowHeight: matrix.count, colWidth: matrix[rotationStep].count, rotationStep: rotationStep)
            auxMatrix[newPos.0][newPos.1] = matrix[i][rotationStep]
            count += 1
        }
        
        for j in rotationStep...matrix[rotationStep].count - 1 - rotationStep - 1 {
            let newPos = arrayPosToMatrixPos(arrayPos: r + count, rowHeight: matrix.count, colWidth: matrix[rotationStep].count, rotationStep: rotationStep)
            auxMatrix[newPos.0][newPos.1] = matrix[matrix.count - 1 - rotationStep][j]
            count += 1
        }
        
        for i in stride(from: matrix.count - 1 - rotationStep, through: rotationStep + 1, by: -1) {
            let newPos = arrayPosToMatrixPos(arrayPos: r + count, rowHeight: matrix.count, colWidth: matrix[rotationStep].count, rotationStep: rotationStep)
            auxMatrix[newPos.0][newPos.1] = matrix[i][matrix[i].count - 1 - rotationStep]
            count += 1
        }
        
        for i in stride(from: matrix[rotationStep].count - 1 - rotationStep, through: rotationStep + 1, by: -1) {
            let newPos = arrayPosToMatrixPos(arrayPos: r + count, rowHeight: matrix.count, colWidth: matrix[rotationStep].count, rotationStep: rotationStep)
            auxMatrix[newPos.0][newPos.1] = matrix[rotationStep][i]
            count += 1
        }
    }
    
    printMatrix(matrix: auxMatrix)
}
