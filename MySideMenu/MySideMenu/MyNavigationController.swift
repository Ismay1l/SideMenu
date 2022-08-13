//
//  MyNavigationController.swift
//  MySideMenu
//
//  Created by Ismayil Ismayilov on 13.08.22.
//

import UIKit

class MyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = ViewController()
        
        self.viewControllers = [vc]
    }
}
