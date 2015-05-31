//
//  SpecificityTest.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import swicolle
import XCTest
import Foundation

public class SpecificityTest : XCTestCase {
    
    public func testEq() {
        XCTAssertEqual(Specificity.of(0, 0, 0)!, Specificity.of(0, 0, 0)!, "test #Eq")
        XCTAssertEqual(Specificity.of(0, 0, 1)!, Specificity.of(0, 0, 1)!, "test #Eq")
        XCTAssertEqual(Specificity.of(0, 1, 0)!, Specificity.of(0, 1, 0)!, "test #Eq")
        XCTAssertEqual(Specificity.of(1, 0, 0)!, Specificity.of(1, 0, 0)!, "test #Eq")
        XCTAssertEqual(Specificity.of(1, 2, 3)!, Specificity.of(1, 2, 3)!, "test #Eq")
    }
    
    public func testCompare() {
        XCTAssertTrue(Specificity.of(1, 0, 0)! > Specificity.of(0, 0, 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, 1, 0)! > Specificity.of(1, 0, 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, 1, 1)! > Specificity.of(1, 1, 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, 0, 0)! >= Specificity.of(0, 0, 0)!, "test #>=")
        XCTAssertTrue(Specificity.of(1, 1, 0)! >= Specificity.of(1, 0, 0)!, "test #>=")
        XCTAssertTrue(Specificity.of(1, 1, 1)! >= Specificity.of(1, 1, 0)!, "test #>=")
        XCTAssertTrue(Specificity.of(0, 0, 0)! >= Specificity.of(0, 0, 0)!, "test #>=")
        XCTAssertTrue(Specificity.of(1, 0, 0)! >= Specificity.of(1, 0, 0)!, "test #>=")
        XCTAssertTrue(Specificity.of(1, 1, 0)! >= Specificity.of(1, 1, 0)!, "test #>=")
        XCTAssertTrue(Specificity.of(0, 0, 0)! < Specificity.of(1, 0, 0)!, "test #<")
        XCTAssertTrue(Specificity.of(1, 0, 0)! < Specificity.of(1, 1, 0)!, "test #<")
        XCTAssertTrue(Specificity.of(1, 1, 0)! < Specificity.of(1, 1, 1)!, "test #<")
    }

}
