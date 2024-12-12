/*
 * MIT License
 *
 * Copyright (c) 2024. DINUM
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
 * OR OTHER DEALINGS IN THE SOFTWARE.
 */

//
//  TchapFont.swift
//  TchapX
//
//  Created by Nicolas Buquet on 12/12/2024.
//  Copyright © 2024 Tchap. All rights reserved.
//

import Compound
import SwiftUI

// Family: Marianne Font names: [
//   "Marianne-Regular",
//   "Marianne-RegularItalic",
//   "Marianne-Thin",
//   "Marianne-ThinItalic",
//   "Marianne-Light",
//   "Marianne-LightItalic",
//   "Marianne-Medium",
//   "Marianne-MediumItalic",
//   "Marianne-Bold",
//   "Marianne-BoldItalic",
//   "Marianne-ExtraBold",
//   "Marianne-ExtraBoldItalic"
// ]

// struct TchapFont {
//     static func scan() {
//         for family in UIFont.familyNames.sorted() {
//             let names = UIFont.fontNames(forFamilyName: family)
//             print("Family: \(family) Font names: \(names)")
//         }
//     }
// }

// enum TchapFontName {
//    static let regular = "Marianne-ExtraBoldItalic"
//    static let bold = "Marianne-ExtraBoldItalic"
//    static let lightAlt = "Marianne-ExtraBoldItalic"
// }
//
//// customise font
// extension UIFontDescriptor.AttributeName {
//    static let nsctFontUIUsage = UIFontDescriptor.AttributeName(rawValue: "NSCTFontUIUsageAttribute")
// }
//
// extension UIFont {
//    @objc class func mySystemFont(ofSize size: CGFloat) -> UIFont {
//        UIFont(name: TchapFontName.regular, size: size)!
//    }
//
//    @objc class func myBoldSystemFont(ofSize size: CGFloat) -> UIFont {
//        UIFont(name: TchapFontName.bold, size: size)!
//    }
//
//    @objc class func myItalicSystemFont(ofSize size: CGFloat) -> UIFont {
//        UIFont(name: TchapFontName.lightAlt, size: size)!
//    }
//
//    @objc convenience init(myCoder aDecoder: NSCoder) {
//        guard
//            let fontDescriptor = aDecoder.decodeObject(forKey: "UIFontDescriptor") as? UIFontDescriptor,
//            let fontAttribute = fontDescriptor.fontAttributes[.nsctFontUIUsage] as? String else {
//            self.init(myCoder: aDecoder)
//            return
//        }
//        var fontName = ""
//        switch fontAttribute {
//        case "CTFontRegularUsage":
//            fontName = TchapFontName.regular
//        case "CTFontEmphasizedUsage", "CTFontBoldUsage":
//            fontName = TchapFontName.bold
//        case "CTFontObliqueUsage":
//            fontName = TchapFontName.lightAlt
//        default:
//            fontName = TchapFontName.regular
//        }
//        self.init(name: fontName, size: fontDescriptor.pointSize)!
//    }
//
//    class func overrideInitialize() {
//        guard self == UIFont.self else { return }
//
//        if let systemFontMethod = class_getClassMethod(self, #selector(systemFont(ofSize:))),
//           let mySystemFontMethod = class_getClassMethod(self, #selector(mySystemFont(ofSize:))) {
//            method_exchangeImplementations(systemFontMethod, mySystemFontMethod)
//        }
//
//        if let boldSystemFontMethod = class_getClassMethod(self, #selector(boldSystemFont(ofSize:))),
//           let myBoldSystemFontMethod = class_getClassMethod(self, #selector(myBoldSystemFont(ofSize:))) {
//            method_exchangeImplementations(boldSystemFontMethod, myBoldSystemFontMethod)
//        }
//
//        if let italicSystemFontMethod = class_getClassMethod(self, #selector(italicSystemFont(ofSize:))),
//           let myItalicSystemFontMethod = class_getClassMethod(self, #selector(myItalicSystemFont(ofSize:))) {
//            method_exchangeImplementations(italicSystemFontMethod, myItalicSystemFontMethod)
//        }
//
//        if let initCoderMethod = class_getInstanceMethod(self, #selector(UIFontDescriptor.init(coder:))), // Trick to get over the lack of UIFont.init(coder:))
//           let myInitCoderMethod = class_getInstanceMethod(self, #selector(UIFont.init(myCoder:))) {
//            method_exchangeImplementations(initCoderMethod, myInitCoderMethod)
//        }
//    }
// }

//   "Marianne-Regular",
//   "Marianne-RegularItalic",
//   "Marianne-Thin",
//   "Marianne-ThinItalic",
//   "Marianne-Light",
//   "Marianne-LightItalic",
//   "Marianne-Medium",
//   "Marianne-MediumItalic",
//   "Marianne-Bold",
//   "Marianne-BoldItalic",
//   "Marianne-ExtraBold",
//   "Marianne-ExtraBoldItalic"

extension CompoundFonts {
    var bodyXS: Font { TchapFont.caption }
    var bodyXSSemibold: Font { TchapFont.caption.weight(.semibold) }
    var bodySM: Font { TchapFont.footnote }
    var bodySMSemibold: Font { TchapFont.footnote.weight(.semibold) }
    var bodyMD: Font { TchapFont.subheadline }
    var bodyMDSemibold: Font { TchapFont.subheadline.weight(.semibold) }
    var bodyLG: Font { TchapFont.body }
    var bodyLGSemibold: Font { TchapFont.body.weight(.semibold) }
    var headingSM: Font { TchapFont.title3 }
    var headingSMSemibold: Font { TchapFont.title3.weight(.semibold) }
    var headingMD: Font { TchapFont.title2 }
    var headingMDBold: Font { TchapFont.title2.bold() }
    var headingLG: Font { TchapFont.title }
    var headingLGBold: Font { TchapFont.title.bold() }
    var headingXL: Font { TchapFont.largeTitle }
    var headingXLBold: Font { TchapFont.largeTitle.bold() }
}

enum TchapFont {
    // From: https://maysamsh.me/2024/05/26/changing-the-app-font-globally-in-for-swiftui-views-a-workaround/
    
    ///
    /// Use the closest weight if your typeface does not support a particular weight
    ///
    private static var regularFontName: String {
        "Marianne-Regular"
    }
    
    private static var mediumFontName: String {
        "Marianne-Medium"
    }
    
    private static var boldFontName: String {
        "Marianne-Bold"
    }
    
    private static var semiBoldFontName: String {
        "Marianne-Bold"
    }
    
    private static var extraBoldFontName: String {
        "Marianne-ExtraBold"
    }
    
    private static var heavyFontName: String {
        "Marianne-ExtraBold"
    }
    
    private static var lightFontName: String {
        "Marianne-Light"
    }
    
    private static var thinFontName: String {
        "Marianne-Thin"
    }
    
    private static var ultraThinFontName: String {
        "Marianne-Thin"
    }
    
    /// Sizes
    private static var preferredSizeTitle: CGFloat {
        UIFont.preferredFont(forTextStyle: .title1).pointSize
    }
    
    private static var preferredLargeTitle: CGFloat {
        UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
    }
    
    private static var preferredExtraLargeTitle: CGFloat {
        if #available(iOS 17.0, *) {
            UIFont.preferredFont(forTextStyle: .extraLargeTitle).pointSize
        } else {
            UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
        }
    }
    
    private static var preferredExtraLargeTitle2: CGFloat {
        if #available(iOS 17.0, *) {
            UIFont.preferredFont(forTextStyle: .extraLargeTitle2).pointSize
        } else {
            UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
        }
    }
    
    private static var preferredTitle1: CGFloat {
        UIFont.preferredFont(forTextStyle: .title1).pointSize
    }
    
    private static var preferredTitle2: CGFloat {
        UIFont.preferredFont(forTextStyle: .title2).pointSize
    }
    
    private static var preferredTitle3: CGFloat {
        UIFont.preferredFont(forTextStyle: .title3).pointSize
    }
    
    private static var preferredHeadline: CGFloat {
        UIFont.preferredFont(forTextStyle: .headline).pointSize
    }
    
    private static var preferredSubheadline: CGFloat {
        UIFont.preferredFont(forTextStyle: .subheadline).pointSize
    }
    
    private static var preferredBody: CGFloat {
        UIFont.preferredFont(forTextStyle: .body).pointSize
    }
    
    private static var preferredCallout: CGFloat {
        UIFont.preferredFont(forTextStyle: .callout).pointSize
    }
    
    private static var preferredFootnote: CGFloat {
        UIFont.preferredFont(forTextStyle: .footnote).pointSize
    }
    
    private static var preferredCaption: CGFloat {
        UIFont.preferredFont(forTextStyle: .caption1).pointSize
    }
    
    private static var preferredCaption2: CGFloat {
        UIFont.preferredFont(forTextStyle: .caption2).pointSize
    }
    
    /// Styles
    public static var title: Font {
        Font.custom(regularFontName, size: preferredTitle1)
    }
    
    public static var title2: Font {
        Font.custom(regularFontName, size: preferredTitle2)
    }
    
    public static var title3: Font {
        Font.custom(regularFontName, size: preferredTitle3)
    }
    
    public static var largeTitle: Font {
        Font.custom(regularFontName, size: preferredLargeTitle)
    }
    
    public static var body: Font {
        Font.custom(regularFontName, size: preferredBody)
    }
    
    public static var headline: Font {
        Font.custom(regularFontName, size: preferredHeadline)
    }
    
    public static var subheadline: Font {
        Font.custom(regularFontName, size: preferredSubheadline)
    }
    
    public static var callout: Font {
        Font.custom(regularFontName, size: preferredCallout)
    }
    
    public static var footnote: Font {
        Font.custom(regularFontName, size: preferredFootnote)
    }
    
    public static var caption: Font {
        Font.custom(regularFontName, size: preferredCaption)
    }
    
    public static var caption2: Font {
        Font.custom(regularFontName, size: preferredCaption2)
    }
    
    public static func system(_ style: Font.TextStyle, design: Font.Design? = nil, weight: Font.Weight? = nil) -> Font {
        var size: CGFloat
        var font: String
        
        switch style {
        case .largeTitle:
            size = preferredLargeTitle
        case .title:
            size = preferredTitle1
        case .title2:
            size = preferredTitle2
        case .title3:
            size = preferredTitle3
        case .headline:
            size = preferredHeadline
        case .subheadline:
            size = preferredSubheadline
        case .body:
            size = preferredBody
        case .callout:
            size = preferredCallout
        case .footnote:
            size = preferredFootnote
        case .caption:
            size = preferredCaption
        case .caption2:
            size = preferredCaption2
        case .extraLargeTitle:
            size = preferredExtraLargeTitle
        case .extraLargeTitle2:
            size = preferredExtraLargeTitle2
        default:
            size = preferredBody
        }
        
        switch weight {
        case .bold:
            font = boldFontName
        case .regular:
            font = regularFontName
        case .heavy:
            font = heavyFontName
        case .light:
            font = lightFontName
        case .medium:
            font = mediumFontName
        case .semibold:
            font = semiBoldFontName
        case .thin:
            font = thinFontName
        case .ultraLight:
            font = ultraThinFontName
        default:
            font = regularFontName
        }
        
        return Font.custom(font, size: size)
    }
    
    public static func system(size: CGFloat, weight: Font.Weight? = .regular, design: Font.Design? = .default) -> Font {
        var font: String
        
        switch weight {
        case .bold:
            font = boldFontName
        case .regular:
            font = regularFontName
        case .heavy:
            font = heavyFontName
        case .light:
            font = lightFontName
        case .medium:
            font = mediumFontName
        case .semibold:
            font = semiBoldFontName
        case .thin:
            font = thinFontName
        case .ultraLight:
            font = ultraThinFontName
        default:
            font = regularFontName
        }
        
        return Font.custom(font, size: size)
    }
}
