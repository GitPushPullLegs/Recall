//
//  AppDelegate.swift
//  Recall
//
//  Created by Jose Aguilar on 5/5/19.
//  Copyright © 2019 Jose Aguilar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = initTabbar()
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

    func initTabbar() -> UITabBarController {
        let peopleViewController = PeopleViewController()
        let assistantViewController = AssistantViewController()
        let groupsViewController = GroupsViewController()
        let searchViewController = SearchViewController()
        
        let peopleTabImage = UIImage(asset: .contacts)
        let assistantTabImage = UIImage(asset: .assistant)
        let groupsTabImage = UIImage(asset: .folder)
        let groupsOpenTabImage = UIImage(asset: .folderOpen)
        let searchTabImage = UIImage(asset: .search)
        
        let peopleTabItem = UITabBarItem(title: "People", image: peopleTabImage, tag: 0)
        let assistantTabItem = UITabBarItem(title: "Assistant", image: assistantTabImage, tag: 1)
        let groupsTabItem = UITabBarItem(title: "Groups", image: groupsTabImage, selectedImage: groupsOpenTabImage)
        groupsTabItem.tag = 2
        let searchTabItem = UITabBarItem(title: "Search", image: searchTabImage, tag: 3)
        
        peopleViewController.tabBarItem = peopleTabItem
        assistantViewController.tabBarItem = assistantTabItem
        groupsViewController.tabBarItem = groupsTabItem
        searchViewController.tabBarItem = searchTabItem
        
        let navigationController = UITabBarController()
        
        navigationController.tabBar.tintColor = UIColor.red
        
        navigationController.setViewControllers([peopleViewController, assistantViewController, groupsViewController, searchViewController], animated: true)

        return navigationController
    }

}

