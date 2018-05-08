//
//  UIButton+Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Style where Base: UIButton {
    
    @discardableResult
    func title(_ title: String?, for state: UIControlState) -> Style {
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControlState) -> Style {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControlState) -> Style {
        base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage?, for state: UIControlState) -> Style {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIControlState) -> Style {
        base.setAttributedTitle(attributedTitle, for: state)
        return self
    }
    
    @discardableResult
    func titleEdgeInsets(_ edgeInsets: UIEdgeInsets) -> Style {
        base.titleEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    func imageEdgeInsets(_ edgeInsets: UIEdgeInsets) -> Style {
        base.imageEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Style {
        base.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func systemFont(of size: CGFloat) -> Style {
        base.titleLabel?.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult
    func boldSystemFont(of size: CGFloat) -> Style {
        base.titleLabel?.font = UIFont.boldSystemFont(ofSize: size)
        return self
    }
}
