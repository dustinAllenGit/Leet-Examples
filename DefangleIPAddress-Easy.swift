//
//  DefangleIPAddress-Easy.swift
//  
//
//  Created by Dustin Allen on 12/26/19.
//

// Given a valid (IPv4) IP address, return a defanged version of that IP address. A defanged IP address replaces every period "." with "[.]".

// Runtime: 4 ms, faster than 92.42% of Swift online submissions for Defanging an IP Address.

// Memory Usage: 20.5 MB, less than 100.00% of Swift online submissions for Defanging an IP Address.

func defangIPaddr(_ address: String) -> String {
    var y : String = ""
    for x in address {
        y = (x == "." ? y + "[.]" : y + String(x))
    }
    return y
}

import Foundation
