//
//  MainTabBarVC.swift
//  KingBetta
//
//  Created by J on 2017/3/29.
//  Copyright © 2017年 J. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor=UIColor.orange;
        for item in child {
            addChildVC(storyboard: item);
        }

        // Do any additional setup after loading the view.
    }
    func addChildVC(storyboard:String)  {
        let vc=UIStoryboard.init(name: storyboard, bundle: nil).instantiateInitialViewController();
        self .addChildViewController(vc!);
    }
    lazy var child: [String] = {
        let chile:[String]=["Home","Live","Follow","Discovery","Profile"];
        return chile;
    }()
   
}
