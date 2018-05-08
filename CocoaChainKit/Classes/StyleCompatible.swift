//
//  StyleCompatible.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public protocol StyleCompatible {
    
    associatedtype StyleCompatibleType
    
    var style: StyleCompatibleType { get }
}

public extension StyleCompatible {
    
    public var style: Style<Self> {
        return Style(self)
    }
}
