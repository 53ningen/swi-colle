//
//  Entity.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

protocol Entity: Printable {
    
    typealias ID: Identity
    
    var id: ID { get }
    
    func getId() -> ID
    
    func sameIdentityAs(other: Self) -> Bool
    
}
