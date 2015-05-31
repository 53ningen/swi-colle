//
//  Math.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

public class Math {
    
    private init() {}
    
    public class func fib(n : Int) -> Int {
        if n < 2 { return n }
        else { return fibGo(0, 1, n - 2) }
    }

    class func fibGo(a : Int, _ b : Int, _ n: Int) -> Int {
        if n == 0 { return a + b }
        else { return fibGo(b, a + b, n - 1) }
    }

}
