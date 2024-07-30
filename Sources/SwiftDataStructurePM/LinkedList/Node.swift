//
//  File.swift
//  
//
//  Created by Cao Nam Duong on 30/7/24.
//

import Foundation

public class Node<Value> {
    
    var val: Value
    var next: Node<Value>?
    
    init(val: Value, next: Node<Value>? = nil) {
        self.val = val
        self.next = next
    }
}

extension Node: CustomStringConvertible {
 
    public var description: String {
        guard let next = self.next else {
            return "\(val)"
        }
        
        return "\(val) -> " + String(describing: next) + " "
    }
}

extension Node: Equatable where Value: Equatable {
    
    public static func == (_ lhs: Node, _ rhs: Node) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
}
