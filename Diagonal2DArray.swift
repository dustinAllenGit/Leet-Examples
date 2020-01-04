//
//  Diagonal2DArray.swift
//  
//
//  Created by Dustin Allen on 1/4/20.
//

/*
 
 Function description
 Complete the  function in the editor below. It must return an integer representing the absolute diagonal difference.
 diagonalDifference takes the following parameter:
 arr: an array of integers .
 Input Format
 The first line contains a single integer, , the number of rows and columns in the matrix .
 Each of the next  lines describes a row, , and consists of  space-separated integers .
 Constraints

 Output Format
 Print the absolute difference between the sums of the matrix's two diagonals as a single integer.
 
 */

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    var a = 0
    var b = 0
    let len = arr[0][0]
    for z in 0..<len {
        if z == 0 {
            a = arr[1][0]
            b = arr[1][len-1]
        } else {
            a += arr[z+1][z]
            b += arr[z+1][len-(z+1)]
        }
    }
    return abs(a - b)
}

let arr = [[3],[11, 2, 4],[4,5,6],[10,8,-12]]
print(diagonalDifference(arr: arr))
