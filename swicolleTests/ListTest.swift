//
//  ListTest.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import swicolle
import XCTest
import Foundation

class ListTest : XCTestCase {
    
    func testEq() {
        let l1 : List<Int> = List<Int>.empty()
        let l2 : List<Int> = List<Int>.empty()
        XCTAssertEqual(l1, l2, "test #==")
        XCTAssertEqual(List<Int>.list([1]), List<Int>.list([1]), "test #==")
        XCTAssertEqual(List<Int>.list([1, 2]), List<Int>.list([1, 2]), "test #==")
        XCTAssertEqual(List<Int>.list([1, 2, 3]), List<Int>.list([1, 2, 3]), "test #==")
        XCTAssertEqual(List<Int>.list([1, 2, 3, 4]), List<Int>.list([1, 2, 3, 4]), "test #==")
        XCTAssertNotEqual(List<Int>.list([1]), List<Int>.list([0]), "test #==")
        XCTAssertNotEqual(List<Int>.list([1, 2]), List<Int>.list([0, 1]), "test #==")
        XCTAssertNotEqual(List<Int>.list([1, 2, 3]), List<Int>.list([0, 1, 2]), "test #==")
        XCTAssertNotEqual(List<Int>.list([1, 2, 3, 4]), List<Int>.list([0, 1, 2, 3]), "test #==")
    }
    
    func testIsEmpty() {
        let l1 : List<Int> = List<Int>.empty()
        XCTAssertEqual(l1.isEmpty(), true, "test #isEmpty")
    }
    
    func testHead() {
        let l1 : List<Int> = List<Int>.empty()
        XCTAssertTrue(l1.head() == nil, "test #head")
        XCTAssertTrue(List<Int>.list([1]).head() == 1, "test #head")
        XCTAssertTrue(List<Int>.list(["abc"]).head() == "abc", "test #head")
    }

    func testTail() {
        let l1 : List<Int> = List<Int>.empty()
        XCTAssertTrue(l1.tail() == nil, "test #tail")
        //XCTAssertTrue(List<Int>.list([1]).tail() == Optional.None, "test #tail")
        XCTAssertEqual(List<Int>.list([1, 2]).tail()!, List<Int>.list([2]), "test #tail")
        XCTAssertEqual(List<Int>.list([1, 2, 3]).tail()!, List<Int>.list([2, 3]), "test #tail")
    }


}
