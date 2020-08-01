//
//  ViewController.swift
//  toy-static-factory-method
//
//  Created by Faiz Mokhtar on 07/06/2018.
//  Copyright © 2018 AirAsia. All rights reserved.
//
// https://www.swiftbysundell.com/posts/static-factory-methods-in-swift

import UIKit

class ViewController: UIViewController {

    private lazy var titleLabel = UILabel.makeForTitle()
    private lazy var buyButton = UIButton.makeForBuying()
    private lazy var newButton = UIButton.newButton

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.frame = CGRect(x: 0,
                                  y: self.view.center.y,
                                  width: UIScreen.main.bounds.size.width,
                                  height: 50)
        titleLabel.backgroundColor = UIColor.red
        titleLabel.text = "Hello world!"

        self.view.addSubview(titleLabel)

        buyButton.frame = CGRect(x: self.view.center.x - 50,
                                 y: titleLabel.frame.maxY + 10,
                                 width: 100,
                                 height: 50)

        self.view.addSubview(buyButton)

        newButton.frame = CGRect(x: self.view.center.x - 50,
                                 y: buyButton.frame.maxY + 10,
                                 width: 100,
                                 height: 50)

        self.view.addSubview(newButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

private extension UIButton {
    // static factory method
    static func makeForBuying() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        button.setTitle("Buy Me", for: .normal)
        button.titleLabel?.textColor = UIColor.white
        button.layer.cornerRadius = 4

        return button
    }

    // static computed properties
    static var newButton: UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor.yellow
        button.setTitle("New Button", for: .normal)
        button.setTitleColor(UIColor.darkText, for: .normal)

        button.layer.cornerRadius = 4

        return button
    }
}
