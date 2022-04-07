//
//  ViewController.swift
//  Netflix Clone App
//
//  Created by Kamil Zachara on 05/04/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        //bottom nav bar navigation setup
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        
        //bottom nav bar icon setup
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")

        
        //bottom nav bar title setup
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Search"
        
        tabBar.tintColor = .label
        
        
        
        
        setViewControllers([vc1,vc2,vc3], animated: true)
        
        
    }


}

