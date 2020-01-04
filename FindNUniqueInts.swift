//
//  FindNUniqueInts.swift
//  
//
//  Created by Dustin Allen on 1/4/20.
//

/* Excercise Description:

Given an integer n, return any array containing n unique integers such that they add up to 0.
*/

// Runtime: 12 ms, faster than 68.09% of Swift online submissions for Find N Unique Integers Sum up to Zero.

// Memory Usage: 21.4 MB, less than 100.00% of Swift online submissions for Find N Unique Integers Sum up to Zero.

import Foundation

func sumZero(_ n: Int) -> [Int] {
    var arr: [Int] = []
    if (n % 2 == 0) {
        var start = -(n/2)
        for _ in 0..<(n/2) {
            arr.append(start)
            arr.append(-start)
            start += 1
        }
    } else {
        var end = -((n-1)/2)
        for _ in 0..<n {
            arr.append(end)
            end += 1
        }
    }
    return arr
}
