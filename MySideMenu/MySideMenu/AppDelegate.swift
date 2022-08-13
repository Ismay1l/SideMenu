//
//  AppDelegate.swift
//  MySideMenu
//
//  Created by Ismayil Ismayilov on 13.08.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MyNavigationController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}

