//
//  AppDelegate.swift
//  SplitOrFlipViewController
//
//  Created by Dmytro Anokhin on 08/10/2017.
//  Copyright © 2017 Dmytro Anokhin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)

        let splitOrFlipViewController = SplitOrFlipViewController()
        
        let leftViewController = ViewController()
        leftViewController.view.backgroundColor = .cyan
        
        let rightViewController = ViewController()
        rightViewController.view.backgroundColor = .magenta
        
        splitOrFlipViewController.leftViewController = UINavigationController(rootViewController: leftViewController)
        splitOrFlipViewController.rightViewController = UINavigationController(rootViewController: rightViewController)

        window.rootViewController = splitOrFlipViewController
        window.makeKeyAndVisible()

        self.window = window

        return true
    }
    
}
