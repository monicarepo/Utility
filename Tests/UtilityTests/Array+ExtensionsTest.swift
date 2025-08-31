//
//  Array+ExtensionsTest.swift
//  Utility
//
//  Created by Moni on 31/08/25.
//

import XCTest
@testable import Utility

final class ArrayExtensionsTest: XCTestCase {
    
    func testIsEmptyOrNil() {
        XCTAssertTrue([].isEmpty)
        XCTAssertFalse([1].isEmpty)
        XCTAssertFalse(Array(1...10).isEmpty)
    }
    
    func testProperValue() {
        let numbers = [1, 2, 3, 4, 5]
        let num1 = numbers[safeIndex: 0]
        XCTAssert(num1 == 1)
    }
    
    func testOutOfBoundsValue() {
        let numbers = [1, 2, 3, 4, 5]
        let num1 = numbers[safeIndex: 10]
        XCTAssertNil(num1)
    }
}
