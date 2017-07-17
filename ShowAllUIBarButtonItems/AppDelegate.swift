//
//  AppDelegate.swift
//  ShowAllUIBarButtonItems
//
//  Created by Bart van Kuik on 17/07/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        let nc = UINavigationController(rootViewController: vc)
        self.window?.rootViewController = nc
        self.window?.makeKeyAndVisible()

        return true
    }
    
}

