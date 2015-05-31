//
//  Math.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

public func fib(n : Int) -> Int {
    if n < 2 { return n }
    else { return fibGo(0, 1, n - 2) }
}

private func fibGo(a : Int, b : Int, n: Int) -> Int {
    if n == 0 { return a + b }
    else { return fibGo(b, a + b, n - 1) }
}
