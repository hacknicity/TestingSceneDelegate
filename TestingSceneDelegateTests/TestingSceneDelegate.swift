//
//  TestingSceneDelegate.swift
//  TestingSceneDelegateTests
//
//  Created by Geoff Hackworth on 09/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

import UIKit

class TestingSceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = TestingRootViewController()
        window?.makeKeyAndVisible()
    }
}
