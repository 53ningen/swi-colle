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
        XCTAssertEqual(Math.fib(0), 0, "testFib")
        XCTAssertEqual(Math.fib(1), 1, "testFib")
        XCTAssertEqual(Math.fib(2), 1, "testFib")
        XCTAssertEqual(Math.fib(3), 2, "testFib")
        XCTAssertEqual(Math.fib(4), 3, "testFib")
        XCTAssertEqual(Math.fib(5), 5, "testFib")
        XCTAssertEqual(Math.fib(6), 8, "testFib")
        XCTAssertEqual(Math.fib(7), 13, "testFib")
        XCTAssertEqual(Math.fib(8), 21, "testFib")
        XCTAssertEqual(Math.fib(9), 34, "testFib")
        XCTAssertEqual(Math.fib(10), 55, "testFib")
        XCTAssertEqual(Math.fib(11), 89, "testFib")
    }
    
}
