//
//  Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public struct Style<Base> {
    
    let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

public extension Style {
    func asAction() -> Action<Base> {
        return Action(base)
    }
}
