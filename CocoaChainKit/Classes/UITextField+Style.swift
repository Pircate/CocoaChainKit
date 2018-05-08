//
//  UITextField+Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Style where Base: UITextField {
    
    @discardableResult
    func textColor(_ textColor: UIColor) -> Style {
        base.textColor = textColor
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Style {
        base.font = font
        return self
    }
    
    @discardableResult
    func systemFont(of size: CGFloat) -> Style {
        base.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult
    func boldSystemFont(of size: CGFloat) -> Style {
        base.font = UIFont.boldSystemFont(ofSize: size)
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Style {
        base.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> Style {
        base.placeholder = placeholder
        return self
    }
    
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Style {
        base.attributedPlaceholder = attributedPlaceholder
        return self
    }
}
