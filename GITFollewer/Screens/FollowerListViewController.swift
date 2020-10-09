//
//  FollowerListViewController.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/9.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
