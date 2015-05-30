//
//  Specificity.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

public struct Specificity: Printable {
    
    let a: Int
    let b: Int
    let c: Int
    
    private init(_ a: Int, _ b: Int, _ c: Int) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    public static func of(a :Int, b: Int, c: Int) -> Specificity? {
        return (a < 0 || b < 0 || c < 0) ? Optional.None : Specificity(a, b, c)
    }
    
    public var description: String {
        return "Specificity{a:\(a),b:\(b),c:\(c)}"
    }
    
}

extension Specificity: Equatable {}
public func ==(lhs: Specificity, rhs: Specificity) -> Bool {
    return lhs.a == rhs.a && lhs.b == rhs.b && lhs.c == rhs.c
}

extension Specificity: Comparable {}
public func >(lhs: Specificity, rhs: Specificity) -> Bool {
    if (lhs.a > rhs.a) { return true }
    if (lhs.b > rhs.b) { return true }
    if (lhs.c > rhs.c) { return true }
    return false
}
public func <(lhs: Specificity, rhs: Specificity) -> Bool {
    if (lhs.a < rhs.a) { return true }
    if (lhs.b < rhs.b) { return true }
    if (lhs.c < rhs.c) { return true }
    return false
}
public func <=(lhs: Specificity, rhs: Specificity) -> Bool {
    if (lhs < rhs || lhs == rhs) { return true }
    return false
}
public func >=(lhs: Specificity, rhs: Specificity) -> Bool {
    if (lhs > rhs || lhs == rhs) { return true }
    return false
}
