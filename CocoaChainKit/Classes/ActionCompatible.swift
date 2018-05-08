//
//  ChainCompatible.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public protocol ActionCompatible {
    
    associatedtype ActioCompatibleType
    
    var action: ActioCompatibleType { get }
}

public extension ActionCompatible {
    
    public var action: Action<Self> {
        return Action(self)
    }
}
