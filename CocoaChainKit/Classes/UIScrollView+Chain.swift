//
//  UIScrollView+Chain.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Chain where Base: UIScrollView {
    
    @discardableResult
    func contentOffset(_ contentOffset: CGPoint) -> Chain {
        base.contentOffset = contentOffset
        return self
    }
    
    @discardableResult
    func contentSize(_ contentSize: CGSize) -> Chain {
        base.contentSize = contentSize
        return self
    }
    
    @discardableResult
    func contentInset(_ contentInset: UIEdgeInsets) -> Chain {
        base.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func bounces(_ bounces: Bool) -> Chain {
        base.bounces = bounces
        return self
    }
    
    @discardableResult
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Chain {
        base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Chain {
        base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    func isPagingEnabled(_ isPagingEnabled: Bool) -> Chain {
        base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    func isScrollEnabled(_ isScrollEnabled: Bool) -> Chain {
        base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Chain {
        base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Chain {
        base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
}
