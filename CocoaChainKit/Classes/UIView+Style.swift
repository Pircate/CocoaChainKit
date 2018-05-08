//
//  UIView+Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

extension UIView: StyleCompatible {}

public extension Style where Base: UIView {
    
    var installed: Base {
        return base
    }
    
    @discardableResult
    func frame(_ frame: CGRect) -> Style {
        base.frame = frame
        return self
    }
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> Style {
        base.bounds = bounds
        return self
    }
    
    @discardableResult
    func center(_ center: CGPoint) -> Style {
        base.center = center
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> Style {
        base.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIViewContentMode) -> Style {
        base.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> Style {
        base.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> Style {
        base.alpha = alpha
        return self
    }
    
    @discardableResult
    func isHidden(_ isHidden: Bool) -> Style {
        base.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func isOpaque(_ isOpaque: Bool) -> Style {
        base.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Style {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Style {
        base.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Style {
        base.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    func masksToBounds(_ masksToBounds: Bool) -> Style {
        base.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    func borderWidth(_ borderWidth: CGFloat) -> Style {
        base.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    func borderColor(_ borderColor: UIColor) -> Style {
        base.layer.borderColor = borderColor.cgColor
        return self
    }
}
