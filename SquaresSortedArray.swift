//
//  SquaresSortedArray.swift
//  
//
//  Created by Dustin Allen on 1/4/20.
//

/* Excercise Description:

Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.
 
*/

// Runtime: 272 ms, faster than 80.54% of Swift online submissions for Squares of a Sorted Array.

// Memory Usage: 22.5 MB, less than 33.33% of Swift online submissions for Squares of a Sorted Array.

import Foundation

// Preference for Time over Memory in this solution
func sortedSquares(_ A: [Int]) -> [Int] {
    
    // Use higher order map to new array with updated values
    var b = A.map { $0 * $0 }
    
    // Use built in sort function, making use of closure short-hand
    b.sort(by: <)
    
    // return sorted array
    return b
}
