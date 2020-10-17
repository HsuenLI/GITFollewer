//
//  GFTabBarController.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/17.
//

import UIKit

class GFTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]
    }
    
    func createSearchNavigationController() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        let searchNC = UINavigationController(rootViewController: searchVC)
        return searchNC
    }
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoritesVC = FavoritesListViewController()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let favoritesNC = UINavigationController(rootViewController: favoritesVC)
        return favoritesNC
    }
}
