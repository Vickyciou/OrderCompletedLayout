//
//  UIFont+extension.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/3.
//

import UIKit

enum DWTFontName: String {
    case pingFangTC = "PingFang TC"
    case naotoSansTC = "Noto Sans TC"
}

extension UIFont {

    static func medium1(fontName: DWTFontName) -> UIFont? {
        return UIFont.systemFont(ofSize: 16, weight: .medium)
    }

    static func medium2(fontName: DWTFontName) -> UIFont? {
        return UIFont.systemFont(ofSize: 14, weight: .medium)
    }

    static func regular1(fontName: DWTFontName) -> UIFont? {
        return UIFont.systemFont(ofSize: 16, weight: .regular)
    }

    static func regular2(fontName: DWTFontName) -> UIFont? {
        return UIFont.systemFont(ofSize: 14, weight: .regular)
    }
    static func regular3(fontName: DWTFontName) -> UIFont? {
        return UIFont.systemFont(ofSize: 12, weight: .regular)
    }
}
