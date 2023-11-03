//
//  UIFont+extension.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/3.
//

import UIKit

private enum DWTFontName: String {
    case pingFangTC = "PingFang TC"
    case naotoSansTC = "Noto Sans TC"
}

extension UIFont {

    static func medium1() -> UIFont? {
        return UIFont.systemFont(ofSize: 16, weight: .medium)
    }

    static func medium2() -> UIFont? {
        return UIFont.systemFont(ofSize: 14, weight: .medium)
    }

    static func regular1() -> UIFont? {
        return UIFont.systemFont(ofSize: 16, weight: .regular)
    }

    static func regular2() -> UIFont? {
        return UIFont.systemFont(ofSize: 14, weight: .regular)
    }
    
}
