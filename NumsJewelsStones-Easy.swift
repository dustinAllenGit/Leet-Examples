//
//  NumsJewelsStones-Easy.swift
//  
//
//  Created by Dustin Allen on 12/26/19.
//

/* Excercise Description:

 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

 The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".
 
*/

// Runtime: 8 ms, faster than 77.32% of Swift online submissions for Jewels and Stones.

// Memory Usage: 20.8 MB, less than 7.69% of Swift online submissions for Jewels and Stones.

import Foundation

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    // Create Set since we don't care about order & Set's faster than Array
    var x : Set<Character> = []
    
    // Create initial Count
    var count = 0
    
    // Insert unique J values in Set
    for a in J {
        x.insert(a)
    }
    
    // Check if Character from String is in Set & add accordingly
    for b in S {
        count = (x.contains(b) ? count + 1 : count)
    }
    
    // Return overall count
    return count
}
