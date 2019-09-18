//
//  ViewController.swift
//  NewNavigation
//
//  Created by Mikhail Kouznetsov on 9/12/19.
//  Copyright © 2019 Mikhail Kouznetsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var label:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 36)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(label)

        label.text = tabBarItem.title!
        label.sizeToFit()
        label.center = view.center
    }
}

