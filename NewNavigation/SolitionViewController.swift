//
//  DummyViewController.swift
//  NewNavigation
//
//  Created by Mikhail Kouznetsov on 9/12/19.
//  Copyright © 2019 Mikhail Kouznetsov. All rights reserved.
//

import UIKit

class SolitionViewController: TabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Awesome Solution"

        let v1 = ViewController()
        let v2 = ViewController()
        let v3 = ViewController()
        let v4 = ViewController()
        let v5 = ViewController()

        v1.tabBarItem = UITabBarItem(title: String(format: "Widget 1.%d", 1), image: nil, selectedImage: nil)
        v2.tabBarItem = UITabBarItem(title: String(format: "Widget 2.%d", 1), image: nil, selectedImage: nil)
        v3.tabBarItem = UITabBarItem(title: String(format: "Widget 3 %d", 1), image: nil, selectedImage: nil)
        v4.tabBarItem = UITabBarItem(title: String(format: "Widget 4.%d", 1), image: nil, selectedImage: nil)
        v5.tabBarItem = UITabBarItem(title: String(format: "Widget 5.%d", 1), image: nil, selectedImage: nil)
        
        viewControllers = [v1, v2, v3, v4, v5]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("APPEAR", animated)
    }
}
