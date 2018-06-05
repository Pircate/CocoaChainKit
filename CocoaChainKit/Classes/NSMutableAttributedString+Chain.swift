//
//  NSMutableAttributedString+Chain.swift
//  CocoaChainKit
//
//  Created by GorXion on 2018/5/9.
//

public extension Chain where Base: NSMutableAttributedString {
    
    @discardableResult
    func addAttribute(_ name: NSAttributedString.Key, value: Any, range: NSRange) -> Chain {
        base.addAttribute(name, value: value, range: range)
        return self
    }
    
    @discardableResult
    func addAttributes(_ attrs: [NSAttributedString.Key : Any] = [:], range: NSRange) -> Chain {
        base.addAttributes(attrs, range: range)
        return self
    }
    
    @discardableResult
    func removeAttribute(_ name: NSAttributedString.Key, range: NSRange) -> Chain {
        base.removeAttribute(name, range: range)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.font, value: font, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.font, value: font, range: range)
        return self
    }
    
    @discardableResult
    func systemFont(ofSize fontSize: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: fontSize), range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: fontSize), range: range)
        return self
    }
    
    @discardableResult
    func boldSystemFont(ofSize fontSize: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: fontSize), range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: fontSize), range: range)
        return self
    }
    
    @discardableResult
    func paragraphStyle(_ paragraphStyle: NSParagraphStyle, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: range)
        return self
    }
    
    @discardableResult
    func foregroundColor(_ foregroundColor: UIColor, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.foregroundColor, value: foregroundColor, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.foregroundColor, value: foregroundColor, range: range)
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.backgroundColor, value: backgroundColor, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.backgroundColor, value: backgroundColor, range: range)
        return self
    }
    
    @discardableResult
    func ligature(_ ligature: Int, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.ligature, value: ligature, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.ligature, value: ligature, range: range)
        return self
    }
    
    @discardableResult
    func kern(_ kern: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.kern, value: kern, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.kern, value: kern, range: range)
        return self
    }
    
    @discardableResult
    func strikethroughStyle(_ strikethroughStyle: Int, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.strikethroughStyle, value: strikethroughStyle, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.strikethroughStyle, value: strikethroughStyle, range: range)
        return self
    }
    
    @discardableResult
    func underlineStyle(_ underlineStyle: Int, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.underlineStyle, value: underlineStyle, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.underlineStyle, value: underlineStyle, range: range)
        return self
    }
    
    @discardableResult
    func strokeColor(_ strokeColor: UIColor, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.strokeColor, value: strokeColor, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.strokeColor, value: strokeColor, range: range)
        return self
    }
    
    @discardableResult
    func strokeWidth(_ strokeWidth: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.strokeWidth, value: strokeWidth, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.strokeWidth, value: strokeWidth, range: range)
        return self
    }
    
    @discardableResult
    func shadow(_ shadow: NSShadow, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.shadow, value: shadow, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.shadow, value: shadow, range: range)
        return self
    }
    
    @discardableResult
    func textEffect(_ textEffect: String, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.textEffect, value: textEffect, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.textEffect, value: textEffect, range: range)
        return self
    }
    
    @discardableResult
    func attachment(_ attachment: NSTextAttachment, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.attachment, value: attachment, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.attachment, value: attachment, range: range)
        return self
    }
    
    @discardableResult
    func link(_ link: URL, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.link, value: link, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.link, value: link, range: range)
        return self
    }
    
    @discardableResult
    func baselineOffset(_ baselineOffset: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.baselineOffset, value: baselineOffset, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.baselineOffset, value: baselineOffset, range: range)
        return self
    }
    
    @discardableResult
    func underlineColor(_ underlineColor: UIColor, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.underlineColor, value: underlineColor, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.underlineColor, value: underlineColor, range: range)
        return self
    }
    
    @discardableResult
    func strikethroughColor(_ strikethroughColor: UIColor, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.strikethroughColor, value: strikethroughColor, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.strikethroughColor, value: strikethroughColor, range: range)
        return self
    }
    
    @discardableResult
    func obliqueness(_ obliqueness: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.obliqueness, value: obliqueness, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.obliqueness, value: obliqueness, range: range)
        return self
    }
    
    @discardableResult
    func expansion(_ expansion: CGFloat, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.expansion, value: expansion, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.expansion, value: expansion, range: range)
        return self
    }
    
    @discardableResult
    func writingDirection(_ writingDirection: [Int], range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.writingDirection, value: writingDirection, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.writingDirection, value: writingDirection, range: range)
        return self
    }
    
    @discardableResult
    func verticalGlyphForm(_ verticalGlyphForm: Int, range: NSRange? = nil) -> Chain {
        guard let range = range else {
            base.addAttribute(NSAttributedString.Key.verticalGlyphForm, value: verticalGlyphForm, range: NSMakeRange(0, base.length))
            return self
        }
        base.addAttribute(NSAttributedString.Key.verticalGlyphForm, value: verticalGlyphForm, range: range)
        return self
    }
}
