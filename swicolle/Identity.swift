//
//  Identity.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

protocol Identity: Printable {
    
    typealias ID: Equatable
    
    func getValue() -> ID
    
}
