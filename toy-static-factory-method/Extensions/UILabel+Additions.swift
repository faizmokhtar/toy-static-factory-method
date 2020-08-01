//
//  UILabel+Additions.swift
//  toy-static-factory-method
//
//  Created by Faiz Mokhtar on 07/06/2018.
//  Copyright © 2018 AirAsia. All rights reserved.
//
// https://www.swiftbysundell.com/posts/static-factory-methods-in-swift

import Foundation
import UIKit

extension UILabel {
    static func makeForTitle() -> UILabel {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = UIColor.darkGray
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.75
        label.textAlignment = .center

        return label
    }
}
