//
//  ComplexTest.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import swicolle
import XCTest
import Foundation

class ComplexTest : XCTestCase {
    
    func testEq() {
        XCTAssertEqual(Complex(0, 0), Complex(0, 0), "Complex#==")
        XCTAssertNotEqual(Complex(0, 0), Complex(1, 2), "Complex#==")
    }
    
}