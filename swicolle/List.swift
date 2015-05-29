//
//  List.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

public struct List<A> {
    
    let next: () -> (head: A, tail: List<A>)
    
    init() {
        self.init()
    }
    
    public init(_ head: A, _ tail: List<A> = List<A>()) {
        self.next = { (head, tail) }
    }
    
}
