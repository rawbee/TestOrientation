//
//  AppDelegate.swift
//  TestOrientation
//
//  Created by Robby Abaya on 2/6/18.
//  Copyright © 2018 rawbee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let localWindow = UIWindow(frame: UIScreen.main.bounds)
        localWindow.rootViewController = ViewController()
        localWindow.makeKeyAndVisible()
        window = localWindow
        return true
    }
}

