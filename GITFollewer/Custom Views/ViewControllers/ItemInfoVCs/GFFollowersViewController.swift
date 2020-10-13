//
//  GFFollowersViewController.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/14.
//

import UIKit

class GFFollowersViewController: GFItemInfoViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
