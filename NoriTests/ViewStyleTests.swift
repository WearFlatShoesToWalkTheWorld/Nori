//
//  ViewStyleTests.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class ViewStyleTests: XCTestCase {
    func testBackgroundColor() {
        let view = UIView()
        let style = ViewStyle {
            $0.backgroundColor = UIColor.blue
        }
        view.stylize(with: style)
        XCTAssertEqual(view.backgroundColor?.cgColor, style.backgroundColor?.cgColor)
    }
    
    func testTintColor() {
        let view = UIView()
        let style = ViewStyle {
            $0.tintColor = UIColor.blue
        }
        view.stylize(with: style)
        XCTAssertEqual(view.tintColor?.cgColor, style.tintColor?.cgColor)
    }
    
    func testAlpha() {
        let view = UIView()
        let style = ViewStyle {
            $0.alpha = 0.88
        }
        view.stylize(with: style)
        XCTAssertEqualWithAccuracy(view.alpha, style.alpha!, accuracy: CGFloat(FLT_EPSILON))
    }
    
    func testCornerRadius() {
        let view = UIView()
        let style = ViewStyle {
            $0.cornerRadius = 12
        }
        view.stylize(with: style)
        XCTAssertEqualWithAccuracy(view.layer.cornerRadius, style.cornerRadius!, accuracy: CGFloat(FLT_EPSILON))
    }
    
    func testContentMode() {
        let view = UIView()
        let style = ViewStyle {
            $0.contentMode = .scaleAspectFit
        }
        view.stylize(with: style)
        XCTAssertEqual(view.contentMode, style.contentMode)
    }
}
