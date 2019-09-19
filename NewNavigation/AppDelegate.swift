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
    let navigationController = NavigationController()
    var moreNavigationController:UINavigationController?
    let tc = TabBarController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)

        
        tc.delegate = self
        let v1 = ViewController()
        let v2 = ViewController()
        let v3 = ViewController()
        let v4 = DummyViewController()
        let v5 = ViewController()
        let v6 = DummyViewController()
        let v7 = ViewController()
        let v8 = ViewController()
        let v9 = ViewController()
        
        v1.tabBarItem = UITabBarItem(title: "Widget 1", image: nil, selectedImage: nil)
        v2.tabBarItem = UITabBarItem(title: "Widget 2", image: nil, selectedImage: nil)
        v3.tabBarItem = UITabBarItem(title: "Widget 3", image: nil, selectedImage: nil)
        v4.tabBarItem = UITabBarItem(title: "Solution 1", image: nil, selectedImage: nil)
        v5.tabBarItem = UITabBarItem(title: "Widget 4", image: nil, selectedImage: nil)
        v6.tabBarItem = UITabBarItem(title: "Solution 2", image: nil, selectedImage: nil)
        v7.tabBarItem = UITabBarItem(title: "Widget 5", image: nil, selectedImage: nil)
        v8.tabBarItem = UITabBarItem(title: "Widget 6", image: nil, selectedImage: nil)
        v9.tabBarItem = UITabBarItem(title: "Widget 7", image: nil, selectedImage: nil)
        
        tc.viewControllers = [v1, v2, v3, v4, v5, v6, v7, v8, v9]
        navigationController.viewControllers = [tc]
        navigationController.delegate = self
        navigationController.isNavigationBarHidden = true

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

        navigationController.isNavigationBarHidden = true
        
        switch viewController{
            
        case is UINavigationController:
            return true
        case is DummyViewController:
            navigationController.isNavigationBarHidden = false
            let solutionVIewCOntroller = SolitionViewController()
            navigationController.pushViewController(solutionVIewCOntroller, animated: false)
            return false
        default:
            return true
        }
    }
}

extension AppDelegate:UINavigationControllerDelegate{
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if viewController == tc{
            navigationController.popViewController(animated: false)
            navigationController.isNavigationBarHidden = true
        }
    }
}

