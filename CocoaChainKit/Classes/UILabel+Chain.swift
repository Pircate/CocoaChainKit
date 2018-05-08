//
//  UILabel+Chain.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Chain where Base: UILabel {
    
    @discardableResult
    func textColor(_ textColor: UIColor) -> Chain {
        base.textColor = textColor
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Chain {
        base.font = font
        return self
    }
    
    @discardableResult
    func systemFont(of size: CGFloat) -> Chain {
        base.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult
    func boldSystemFont(of size: CGFloat) -> Chain {
        base.font = UIFont.boldSystemFont(ofSize: size)
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Chain {
        base.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Chain {
        base.textAlignment = textAlignment
        return self
    }
}
