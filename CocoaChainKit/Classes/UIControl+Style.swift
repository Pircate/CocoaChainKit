//
//  UIControl+Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Style where Base: UIControl {
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> Style {
        base.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func isSelected(_ isSelected: Bool) -> Style {
        base.isSelected = isSelected
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Style {
        base.isHighlighted = isHighlighted
        return self
    }
}
