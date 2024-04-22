//
//  AppDelegate.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let frame = DeLoreanRouter()
        window?.rootViewController = frame.viewController
        window?.makeKeyAndVisible()
        return true
    }
}

