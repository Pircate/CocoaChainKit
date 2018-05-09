//
//  NSMutableAttributedString+Chain.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/9.
//

public extension Chain where Base: NSMutableAttributedString {
    
    @discardableResult
    func addAttribute(_ name: NSAttributedStringKey, value: Any, range: NSRange) -> Chain {
        base.addAttribute(name, value: value, range: range)
        return self
    }
    
    @discardableResult
    func addAttributes(_ attrs: [NSAttributedStringKey : Any] = [:], range: NSRange) -> Chain {
        base.addAttributes(attrs, range: range)
        return self
    }
    
    @discardableResult
    func removeAttribute(_ name: NSAttributedStringKey, range: NSRange) -> Chain {
        base.removeAttribute(name, range: range)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Chain {
        base.addAttribute(.font, value: font, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func systemFont(ofSize fontSize: CGFloat) -> Chain {
        base.addAttribute(.font, value: UIFont.systemFont(ofSize: fontSize), range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func boldSystemFont(ofSize fontSize: CGFloat) -> Chain {
        base.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: fontSize), range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func paragraphStyle(_ paragraphStyle: NSParagraphStyle) -> Chain {
        base.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func foregroundColor(_ foregroundColor: UIColor) -> Chain {
        base.addAttribute(.foregroundColor, value: foregroundColor, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> Chain {
        base.addAttribute(.backgroundColor, value: backgroundColor, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func ligature(_ ligature: Int) -> Chain {
        base.addAttribute(.ligature, value: ligature, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func kern(_ kern: CGFloat) -> Chain {
        base.addAttribute(.kern, value: kern, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func strikethroughStyle(_ strikethroughStyle: Int) -> Chain {
        base.addAttribute(.strikethroughStyle, value: strikethroughStyle, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func underlineStyle(_ underlineStyle: NSUnderlineStyle) -> Chain {
        base.addAttribute(.underlineStyle, value: underlineStyle, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func strokeColor(_ strokeColor: UIColor) -> Chain {
        base.addAttribute(.strokeColor, value: strokeColor, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func strokeWidth(_ strokeWidth: CGFloat) -> Chain {
        base.addAttribute(.strokeWidth, value: strokeWidth, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func shadow(_ shadow: NSShadow) -> Chain {
        base.addAttribute(.shadow, value: shadow, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func textEffect(_ textEffect: String) -> Chain {
        base.addAttribute(.textEffect, value: textEffect, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func attachment(_ attachment: NSTextAttachment) -> Chain {
        base.addAttribute(.attachment, value: attachment, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func link(_ link: URL) -> Chain {
        base.addAttribute(.link, value: link, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func baselineOffset(_ baselineOffset: CGFloat) -> Chain {
        base.addAttribute(.baselineOffset, value: baselineOffset, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func underlineColor(_ underlineColor: UIColor) -> Chain {
        base.addAttribute(.underlineColor, value: underlineColor, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func strikethroughColor(_ strikethroughColor: UIColor) -> Chain {
        base.addAttribute(.strikethroughColor, value: strikethroughColor, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func obliqueness(_ obliqueness: CGFloat) -> Chain {
        base.addAttribute(.obliqueness, value: obliqueness, range: NSMakeRange(0, base.length))
        return self
    }
    
    @discardableResult
    func expansion(_ expansion: CGFloat) -> Chain {
        base.addAttribute(.expansion, value: expansion, range: NSMakeRange(0, base.length))
        return self
    }
}
