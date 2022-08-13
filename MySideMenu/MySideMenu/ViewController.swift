//
//  ViewController.swift
//  MySideMenu
//
//  Created by Ismayil Ismayilov on 13.08.22.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    
    var menu: SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
        let menuButton = UIBarButtonItem(title: "Menu",
                                         style: .plain,
                                         target: self,
                                         action: #selector(didTapMenu))
        
        self.navigationItem.leftBarButtonItem = menuButton
    }
    
    @objc func didTapMenu() {
        present(menu!, animated: true)
    }
}

