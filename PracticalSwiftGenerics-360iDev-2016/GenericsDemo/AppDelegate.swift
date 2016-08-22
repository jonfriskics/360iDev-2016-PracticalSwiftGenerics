//
//  AppDelegate.swift
//  GenericsDemo
//
//  Created by Jon Friskics on 8/19/16.
//  Copyright © 2016 Code School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        
        let vc = ScreencastTableViewController()
        
        let nc = UINavigationController(rootViewController: vc)
        
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        return true
    }

}
