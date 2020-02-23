//
//  AppDelegate.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 20/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let w = UIWindow(frame: UIScreen.main.bounds)
        w.rootViewController = UINavigationController(rootViewController: AuthenticationViewController())
        w.makeKeyAndVisible()
        self.window = w
        
        return true
    }


}

