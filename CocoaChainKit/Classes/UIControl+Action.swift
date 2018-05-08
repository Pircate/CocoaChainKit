//
//  UIControl+Action.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Action where Base: UIControl {
    
    @discardableResult
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) -> Action {
        base.addTarget(target, action: action, for: controlEvents)
        return self
    }
}

