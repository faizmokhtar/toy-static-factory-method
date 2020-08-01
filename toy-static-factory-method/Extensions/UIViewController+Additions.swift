//
//  UIViewController+Additions.swift
//  toy-static-factory-method
//
//  Created by Faiz Mokhtar on 07/06/2018.
//  Copyright © 2018 AirAsia. All rights reserved.
//
// https://www.swiftbysundell.com/posts/static-factory-methods-in-swift

import Foundation
import UIKit

extension UIViewController {
    static var loading: UIViewController {
        let viewController = UIViewController()

        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.startAnimating()
        viewController.view.addSubview(indicator)

        NSLayoutConstraint.activate([
            indicator.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            indicator.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor)
            ])

        return viewController
    }
}
