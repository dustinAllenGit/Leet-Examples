//
//  CheckSum.swift
//  
//
//  Created by Dustin Allen on 1/4/20.
//

import XCTest
import Foundation

// Brute Force - O(n ^ 2)
//func checkSumTwoNumbers(_ arr: Array<Int>, _ val: Int) -> Bool {
//    for x in 1..<arr.count {
//        for y in 0..<arr.count {
//            print(1)
//            if (arr[x] + arr[y] == val) {
//                return true
//            }
//        }
//    }
//    return false
//}

// Sort - O(n log n)
//func checkSumTwoNumbers(_ arr: inout Array<Int>, _ val: Int) -> Bool {
//    arr.sort()
//    var x = 0
//    var y = (arr.count - 1)
//
//    while x < y {
//        if arr[x] + arr[y] == val {
//            return true
//        } else if arr[x] + arr[y] < val {
//            x += 1
//        } else {
//            y -= 1
//        }
//    }
//    return false
//}

// Use of Hash Map - O(1)
func checkSumTwoNumbers(_ arr: inout Array<Int>, _ val: Int) -> Bool {
    measure {
        let s = Set(arr)
        for x in 0..<arr.count {
            let y = val - arr[x]
            if s.contains(y) {
                return true
            }
        }
        return false
    }
}


var arrs = [10, 15, 3, 7, 14, 98, 23, 54, 23, 54, 3]

print(checkSumTwoNumbers(&arrs, 37))
