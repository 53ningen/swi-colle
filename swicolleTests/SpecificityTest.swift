//
//  SpecificityTest.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import swicolle
import XCTest
import Foundation

public class SpecificityTest: XCTestCase {
    
    public func testEq() {
        XCTAssertEqual(Specificity.of(0, b: 0, c: 0)!, Specificity.of(0, b: 0, c: 0)!, "test #Eq")
        XCTAssertEqual(Specificity.of(0, b: 0, c: 1)!, Specificity.of(0, b: 0, c: 1)!, "test #Eq")
        XCTAssertEqual(Specificity.of(0, b: 1, c: 0)!, Specificity.of(0, b: 1, c: 0)!, "test #Eq")
        XCTAssertEqual(Specificity.of(1, b: 0, c: 0)!, Specificity.of(1, b: 0, c: 0)!, "test #Eq")
        XCTAssertEqual(Specificity.of(1, b: 2, c: 3)!, Specificity.of(1, b: 2, c: 3)!, "test #Eq")
    }
    
    public func testCompare() {
        XCTAssertTrue(Specificity.of(1, b: 0, c: 0)! > Specificity.of(0, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 1, c: 0)! > Specificity.of(1, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 1, c: 1)! > Specificity.of(1, b: 1, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 0, c: 0)! >= Specificity.of(0, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 1, c: 0)! >= Specificity.of(1, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 1, c: 1)! >= Specificity.of(1, b: 1, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(0, b: 0, c: 0)! >= Specificity.of(0, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 0, c: 0)! >= Specificity.of(1, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 1, c: 0)! >= Specificity.of(1, b: 1, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(0, b: 0, c: 0)! < Specificity.of(1, b: 0, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 0, c: 0)! < Specificity.of(1, b: 1, c: 0)!, "test #>")
        XCTAssertTrue(Specificity.of(1, b: 1, c: 0)! < Specificity.of(1, b: 1, c: 1)!, "test #>")
    }

}
