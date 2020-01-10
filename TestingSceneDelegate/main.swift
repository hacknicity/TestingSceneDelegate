//
//  main.swift
//  TestingSceneDelegate
//
//  Created by Geoff Hackworth on 09/01/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

import UIKit

// If we have a TestingAppDelegate (i.e. we're running unit tests), use that to avoid executing initialisation code in AppDelegate
let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(appDelegateClass))
