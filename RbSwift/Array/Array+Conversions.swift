//
//  Array+Conversions.swift
//  RbSwift
//
//  Created by Draveness on 23/03/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public extension Array {
    func to_i(_ base: Int = 10) -> Int {
        var index = 0
        return flatMap {
            $0 as? Int
        }.reduce(0) { (result, digit) in
            let result = result + digit * (base ** index)
            index += 1
            return result
        }
    }
    
}
