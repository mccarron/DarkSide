//
//  UIColorExtension.swift
//  DarkSide
//
//  Created by Patrick McCarron on 11/11/19.
//  Copyright © 2019 Patrick McCarron. All rights reserved.
//

import UIKit

public extension UIColor {

    static func dynamic(light: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13, *) {
            return UIColor { trait -> UIColor in
                return trait.userInterfaceStyle == .dark ? dark : light
            }
        }
        return light
    }

    @nonobjc static var m1Text01: UIColor {
        return dynamic(light: UIColor.lightGray,
                       dark: UIColor.darkGray)
    }

    private static var kColorPostFix: String {
        // For testing Dark Mode colors in Debbug builds
        #if DEBUG
            return "_DEBUG"
        #else
            return ""
        #endif
    }

    // Colors by type

    @nonobjc static var CTA: UIColor {
        return UIColor(named: "CTA\(kColorPostFix)")!
    }

    @nonobjc static var backgroundPrimary: UIColor {
        return UIColor(named: "BackgroundPrimary\(kColorPostFix)")!
    }

    @nonobjc static var backgroundSecondary: UIColor {
        return UIColor(named: "BackgroundSecondary\(kColorPostFix)")!
    }

    @nonobjc static var textPrimary: UIColor {
        let light = UIColor.black
        let dark = UIColor.white

        if #available(iOS 13, *) {
            return UIColor { trait -> UIColor in
                return trait.userInterfaceStyle == .dark ? dark : light
            }
        }
        return light
    }
}
