//
//  ProdMinusSum-Easy.swift
//  
//
//  Created by Dustin Allen on 12/26/19.
//

/* Exercise Description:
 
 Given an integer number n, return the difference between the product of its digits and the sum of its digits.
 
 */

// Runtime: 4 ms, faster than 94.74% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.

// Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.

import Foundation

func subtractProductAndSum(_ n: Int) -> Int {
    let x = "\(n)"
    var prod = 1
    var sum = 0
    for y in x {
        let a = Int(String(y))
        guard let b = a else {return 0}

        prod = prod * b
        sum = sum + b
    }
    return prod - sum
}
