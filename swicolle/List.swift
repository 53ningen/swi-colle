//
//  List.swift
//  swicolle
//
//  Copyright (c) 2015年 gomi_ningen. All rights reserved.
//

import Foundation

public class List<T : Equatable> {
    
    let node : Node<T>?
    
    init(_ node : Node<T>? = Optional.None) {
        self.node = node
    }
    
    public class func empty<T>() -> List<T> {
        return List<T>()
    }
    
    public class func list<T>(values : Array<T>) -> List<T> {
        if values.count < 1 { return empty() }
        else { return List<T>(cons(values.count - 1, values, Node(values[values.count - 1]))) }
    }
    
    private class func cons<T>(count : Int, _ array : Array<T>, _ node : Node<T>) -> Node<T> {
        if count == 0 { return Node(array[0], node) }
        else { return cons(count - 1 , array, Node(array[count], node)) }
    }
    
    public func isEmpty() -> Bool {
        return node == nil
    }
    
    public func head() -> T? {
        return node?.x
    }
    
    public func tail() -> List<T>? {
        
        if let xs = node?.xs { return List(xs) }
        else { return Optional.None }
    }

}

class Node<T> : Printable {
    
    let x : T
    let xs : Node<T>?
    
    init(_ x : T, _ xs : Node<T>? = Optional.None) {
        self.x = x
        self.xs = xs
    }
    
    var description : String {
        return "Node(\(x), \(xs))"
    }
    
}

extension List : Equatable {}
public func ==<T>(lhs : List<T>, rhs : List<T>) -> Bool {
    return lhs.head() == rhs.head() && lhs.tail() == rhs.tail()
}
