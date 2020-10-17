//
//  FavoritesListViewController.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/9/30.
//

import UIKit

class FavoritesListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
}
