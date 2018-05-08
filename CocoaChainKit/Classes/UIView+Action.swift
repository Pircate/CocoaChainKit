//
//  UIView+Action.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

extension UIView: ActionCompatible {}

public extension Action where Base: UIView {
    var installed: Base {
        return base
    }
    
    func add(to view: UIView) {
        view.addSubview(base)
    }
}
