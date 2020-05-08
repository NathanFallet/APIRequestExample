//
//  AppDelegate.swift
//  APIRequestExample
//
//  Created by Nathan FALLET on 07/05/2020.
//  Copyright © 2020 Nathan FALLET. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create the view
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TableViewController(style: .grouped)
        window?.makeKeyAndVisible()
        
        // Return
        return true
    }


}

