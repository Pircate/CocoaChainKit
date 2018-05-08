//
//  Action.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public struct Action<Base> {
    let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

public extension Action {
    func asStyle() -> Style<Base> {
        return Style(base)
    }
}
