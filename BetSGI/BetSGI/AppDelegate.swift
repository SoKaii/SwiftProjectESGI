//
//  AppDelegate.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let w = UIWindow(frame: UIScreen.main.bounds)
        w.rootViewController = GalleryViewController()
        w.makeKeyAndVisible()
        self.window = w

        return true
    }
}
