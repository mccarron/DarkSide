//
//  UIImageViewExtension.swift
//  DarkSide
//
//  Created by Patrick McCarron on 11/18/19.
//  Copyright © 2019 Patrick McCarron. All rights reserved.
//

import UIKit

public extension UIImageView {
    func setImage(light: UIImage, dark: UIImage) {
        if #available(iOS 13, *), traitCollection.userInterfaceStyle == .dark {
            image = dark
        } else {
            image = light
        }
    }
}
