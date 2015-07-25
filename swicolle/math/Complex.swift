//
//  Complex.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

public struct Complex<T : SignedNumberType> {
    
    let r : T
    let i : T
    
    public init(_ re : T, _ im : T) {
        self.r = re
        self.i = im
    }
    
    public func re() -> T {
        return r
    }
    
    public func im() -> T {
        return i
    }

}

extension Complex : Equatable {}
public func ==<T>(lhs : Complex<T>, rhs : Complex<T>) -> Bool {
    return lhs.r == rhs.r && lhs.i == rhs.i
}
