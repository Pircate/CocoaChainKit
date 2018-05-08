//
//  UINavigationBar+Style.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/8.
//

public extension Style where Base: UINavigationBar {
    
    @discardableResult
    func barStyle(_ barStyle: UIBarStyle) -> Style {
        base.barStyle = barStyle
        return self
    }
    
    @discardableResult
    func isTranslucent(_ isTranslucent: Bool) -> Style {
        base.isTranslucent = isTranslucent
        return self
    }
    
    @discardableResult
    func barTintColor(_ barTintColor: UIColor?) -> Style {
        base.barTintColor = barTintColor
        return self
    }
    
    @discardableResult
    func backgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition = .any, barMetrics: UIBarMetrics = .default) -> Style {
        base.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    func shadowImage(_ shadowImage: UIImage?) -> Style {
        base.shadowImage = shadowImage
        return self
    }
    
    @discardableResult
    func titleTextAttributes(_ titleTextAttributes: [NSAttributedStringKey : Any]?) -> Style {
        base.titleTextAttributes = titleTextAttributes
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func prefersLargeTitles(_ prefersLargeTitles: Bool) -> Style {
        base.prefersLargeTitles = prefersLargeTitles
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func largeTitleTextAttributes(_ largeTitleTextAttributes: [NSAttributedStringKey : Any]?) -> Style {
        base.largeTitleTextAttributes = largeTitleTextAttributes
        return self
    }
}
