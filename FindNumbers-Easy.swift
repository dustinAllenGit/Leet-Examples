//
//  FindNumbers-Easy.swift
//  Layout
//
//  Created by Dustin Allen on 12/26/19.
//  Copyright © 2019 raywenderlich. All rights reserved.
//

import Foundation

// Runtime = 40ms, 62.11% faster than Swift submissions as of 12/26/19
// Memory Usage = 20.9mb, less than 100.00% of Swift submissions as of 12/26/19

func findNumbers(_ nums: [Int]) -> Int {
    var z = 0
    for x in nums {
        let y = "\(x)"
        if (y.count % 2 == 0) {
            z += 1
        }
    }
    return z
}
