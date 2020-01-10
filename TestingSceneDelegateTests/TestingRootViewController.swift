//
//  TestingRootViewController.swift
//  TestingSceneDelegateTests
//
//  Created by Geoff Hackworth on 09/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

import UIKit

class TestingRootViewController: UIViewController {

    override func loadView() {
        let label = UILabel()
        label.text = "Running Unit Tests..."
        label.textAlignment = .center
        label.textColor = .white

        view = label
    }
}
