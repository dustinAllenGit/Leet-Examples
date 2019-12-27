//
//  DefangleIPAddress-Easy.swift
//  
//
//  Created by Dustin Allen on 12/26/19.
//

/* Excercise Description:

 Given a valid (IPv4) IP address, return a defanged version of that IP address. A defanged IP address replaces every period "." with "[.]".
 
*/

// Runtime: 4 ms, faster than 92.42% of Swift online submissions for Defanging an IP Address.

// Memory Usage: 20.5 MB, less than 100.00% of Swift online submissions for Defanging an IP Address.

import Foundation

func defangIPaddr(_ address: String) -> String {
    
    // Crate mutable string
    var y : String = ""
    
    // Use Swift's built in Character type
    for x in address {
        
        // Assign y value to result of character
        y = (x == "." ? y + "[.]" : y + String(x))
    }
    // Return final string
    return y
}
