//
//  UIScrollView+Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Style where Base: UIScrollView {
    
    @discardableResult
    func contentOffset(_ contentOffset: CGPoint) -> Style {
        base.contentOffset = contentOffset
        return self
    }
    
    @discardableResult
    func contentSize(_ contentSize: CGSize) -> Style {
        base.contentSize = contentSize
        return self
    }
    
    @discardableResult
    func contentInset(_ contentInset: UIEdgeInsets) -> Style {
        base.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func bounces(_ bounces: Bool) -> Style {
        base.bounces = bounces
        return self
    }
    
    @discardableResult
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Style {
        base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Style {
        base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    func isPagingEnabled(_ isPagingEnabled: Bool) -> Style {
        base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    func isScrollEnabled(_ isScrollEnabled: Bool) -> Style {
        base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Style {
        base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Style {
        base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
}
