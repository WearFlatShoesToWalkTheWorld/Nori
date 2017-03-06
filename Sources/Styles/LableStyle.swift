//
//  LableStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class LabelStyle: ViewStyle {
    public var textColor: UIColor?
    public var font: UIFont?
    public var align: NSTextAlignment?
    public var lines: Int?
    public var minimumScale: CGFloat?
    
    public convenience init(closure: (LabelStyle) -> Void) {
        self.init()
        closure(self)
    }
    
    public func stylizeTo(label: UILabel) {
        label.textColor ??= textColor
        label.font ??= font
        label.textAlignment ??= align
        label.numberOfLines ??= lines
        label.minimumScaleFactor ??= minimumScale
        label.adjustsFontSizeToFitWidth = label.minimumScaleFactor > 0.0
    }
}
