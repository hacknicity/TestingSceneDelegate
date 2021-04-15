//
//  TestingAppDelegate.swift
//  TestingSceneDelegateTests
//
//  Created by Geoff Hackworth on 09/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

import UIKit

@objc(TestingAppDelegate)
final class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        if #available(iOS 13, *) {
            // Remove any cached scene configurations to ensure that TestingAppDelegate.application(_:configurationForConnecting:options:) is called and TestingSceneDelegate will be used when running unit tests. NOTE: THIS IS PRIVATE API AND MAY BREAK IN THE FUTURE!
            for sceneSession in application.openSessions {
                application.perform(Selector(("_removeSessionFromSessionSet:")), with: sceneSession)
            }
        } else {
            window = UIWindow()
            window?.rootViewController = TestingRootViewController()
            window?.makeKeyAndVisible()
        }

        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        let sceneConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfiguration.delegateClass = TestingSceneDelegate.self
        sceneConfiguration.storyboard = nil

        return sceneConfiguration
    }
}
