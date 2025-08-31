//
//  Array+Extension.swift
//  Utility
//
//  Created by Moni on 31/08/25.
//

import Foundation

public extension Array {
    subscript (safeIndex index: Int) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
