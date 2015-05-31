//
//  MathTest.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import swicolle
import XCTest
import Foundation

public class MathTest : XCTestCase {
    
    public func testFib() {
        XCTAssertEqual(fib(0), 0, "testFib")
        XCTAssertEqual(fib(1), 1, "testFib")
        XCTAssertEqual(fib(2), 1, "testFib")
        XCTAssertEqual(fib(3), 2, "testFib")
        XCTAssertEqual(fib(4), 3, "testFib")
        XCTAssertEqual(fib(5), 5, "testFib")
        XCTAssertEqual(fib(6), 8, "testFib")
        XCTAssertEqual(fib(7), 13, "testFib")
        XCTAssertEqual(fib(8), 21, "testFib")
        XCTAssertEqual(fib(9), 34, "testFib")
        XCTAssertEqual(fib(10), 55, "testFib")
        XCTAssertEqual(fib(11), 89, "testFib")
    }
    
}
