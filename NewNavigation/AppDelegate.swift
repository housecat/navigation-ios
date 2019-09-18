//
//  AppDelegate.swift
//  NewNavigation
//
//  Created by Mikhail Kouznetsov on 9/12/19.
//  Copyright © 2019 Mikhail Kouznetsov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let navigationController = UINavigationController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        navigationController.isNavigationBarHidden = true

        let tabBarController = TabBarController()
        tabBarController.delegate = self
        let v1 = ViewController()
        let v2 = ViewController()
        let v3 = ViewController()
        let v4 = ViewController()
        let v5 = DummyViewController()
        
        v1.tabBarItem = UITabBarItem(title: "Widget 1", image: nil, selectedImage: nil)
        v2.tabBarItem = UITabBarItem(title: "Widget 2", image: nil, selectedImage: nil)
        v3.tabBarItem = UITabBarItem(title: "Widget 3", image: nil, selectedImage: nil)
        v4.tabBarItem = UITabBarItem(title: "Widget 4", image: nil, selectedImage: nil)
        v5.tabBarItem = UITabBarItem(title: "Solution", image: nil, selectedImage: nil)
        
        tabBarController.viewControllers = [v1, v2, v3, v4,  v5]
        
        
        navigationController.viewControllers = [tabBarController]
        navigationController.view.backgroundColor = .white

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate:UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is DummyViewController{
            
            let count = navigationController.viewControllers.count
            
            let tabBarController = TabBarController()
            tabBarController.delegate = self
            let v1 = ViewController()
            let v2 = ViewController()
            let v3 = ViewController()
            let v4 = ViewController()
            let v5 = DummyViewController()
            
            v1.tabBarItem = UITabBarItem(title: String(format: "Widget 1.%d", count, count), image: nil, selectedImage: nil)
            v2.tabBarItem = UITabBarItem(title: String(format: "Widget 2.%d", count, count), image: nil, selectedImage: nil)
            v3.tabBarItem = UITabBarItem(title: String(format: "Widget 3 %d", count, count), image: nil, selectedImage: nil)
            v4.tabBarItem = UITabBarItem(title: String(format: "Widget 4.%d", count, count), image: nil, selectedImage: nil)
            v5.tabBarItem = UITabBarItem(title: "Solution " + String(count), image: nil, selectedImage: nil)
            
            tabBarController.viewControllers = [v1, v2, v3, v4, v5]
            

            navigationController.pushViewController(tabBarController, animated: true)
            return false
        }
        return true
    }
}

