//
//  File.swift
//  
//
//  Created by Cao Nam Duong on 30/7/24.
//

import Foundation

public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    
    public init() {
        
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
}

extension LinkedList {
    
    public mutating func reverse() {
        
        var tmp: Node<Value>? = nil
        
        while head != nil {
            let next = head?.next
            head?.next = tmp
            tmp = head
            head = next
        }
    }
}

extension LinkedList {
    
    public mutating func append(_ newValue: Value) {
        let node = Node(val: newValue)
        
        if isEmpty {
            push(newValue)
            return
        }
        
        var tmp: Node<Value> = head!

        while tmp.next != nil {
            tmp = tmp.next!
        }
        
        tmp.next = node
    }
    
    public mutating func push(_ newValue: Value) {
        let node = Node(val: newValue, next: head)
        head = node
    }
    
    public func node(at index: Int) -> Node<Value>? {
        
        var currentNode: Node<Value>? = head
        var currentIndex = 0
        
        while currentIndex < index && currentNode?.next != nil {
            currentNode = head?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(_ newValue: Value, after node: Node<Value>) -> Node<Value> {
        
        node.next = Node(val: newValue, next: node.next)
        
        return node.next!
    }
}

extension LinkedList {
    
    private mutating func copyNodes() {
        guard var oldNode = head else { return }
        
        head = Node(val: oldNode.val)
        var newNode = head
        
        while let nextOldNode = oldNode.next {
            newNode?.next = Node(val: nextOldNode.val)
            newNode = newNode?.next
            oldNode = nextOldNode
        }
    }
}


