//
//  BrokenViewController.swift
//  DarkSide
//
//  Created by Patrick McCarron on 11/11/19.
//  Copyright © 2019 Patrick McCarron. All rights reserved.
//

import UIKit

class BrokenViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        update()
    }

    func update() {
        var image = UIImage(named: "yang")
        var bgColor: UIColor = .white
        var textColor: UIColor = .black
        if #available(iOS 13, *), traitCollection.userInterfaceStyle == .dark {
            image = UIImage(named: "yin")
            bgColor = .black
            textColor = .white
        }
        imageView.image = image
        view.backgroundColor = bgColor
        titleLabel.textColor = textColor
        bodyLabel.textColor = textColor

// Step 1: Also can do these w/ Asset Library Shortcuts (DEBUG build only here)
//        view.backgroundColor = .backgroundSecondary
//        titleLabel.backgroundColor = .backgroundSecondary


// Step 2: Also can do these w/ code
//        view.backgroundColor = .dynamic(light: .white, dark: .black)
//        titleLabel.backgroundColor = .dynamic(light: .white, dark: .black)
    }

// Step 4: Fix by uncommenting this
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        update()
//    }

// Step 5: Or fix by uncommenting this
//    public override func traitCollectionDidChange(_ previous: UITraitCollection?) {
//        super.traitCollectionDidChange(previous)
//
//        if #available(iOS 13, *),
//            traitCollection.hasDifferentColorAppearance(comparedTo: previous),
//            traitCollection.userInterfaceStyle != previous?.userInterfaceStyle {
//                update()
//        }
//    }
}

