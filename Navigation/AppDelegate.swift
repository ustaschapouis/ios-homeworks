//
//  AppDelegate.swift
//  Navigation
//
//  Created by Владлен Морозов on 27.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        let tabBarController = UITabBarController()
        
        let feedVC = FeedViewController()
        feedVC.view.backgroundColor = .blue
        feedVC.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(named: "Feed"), tag: 0)
        
        let profileVC = ProfileViewController()
        profileVC.view.backgroundColor = .red
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "Profile"), tag: 1)
        
       
        let feedNavVC = UINavigationController(rootViewController: feedVC)
        let profileNavVC = UINavigationController(rootViewController: profileVC)
            
        tabBarController.viewControllers = [feedNavVC, profileNavVC]
        

        window?.rootViewController = tabBarController
        
        
        
       
        
        
        return true
    }

}

