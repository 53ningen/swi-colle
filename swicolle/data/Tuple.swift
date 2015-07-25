//
//  Tuple.swift
//  swicolle
//
//  Copyright (c) 2015 gomi_ningen. All rights reserved.
//

import Foundation

public func ==(lhs: (), rhs: ()) -> Bool {
    return true
}

public func ==<A: Equatable>(lhs: (A), rhs: (A)) -> Bool {
    return lhs.0 == rhs.0
}

public func ==<A: Equatable, B: Equatable>(lhs: (A, B), rhs: (A, B)) -> Bool {
    return lhs.0 == rhs.0
        && lhs.1 == rhs.1
}

public func ==<A: Equatable, B: Equatable, C: Equatable>(lhs: (A, B, C), rhs: (A, B, C)) -> Bool {
    return lhs.0 == rhs.0
        && lhs.1 == rhs.1
        && lhs.2 == rhs.2
}
