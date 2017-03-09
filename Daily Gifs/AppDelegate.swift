//
//  AppDelegate.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/4/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController
import ChameleonFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Chameleon.setGlobalThemeUsingPrimaryColor(FlatGreen(), with: UIContentStyle.light)
        return true
    }
}

