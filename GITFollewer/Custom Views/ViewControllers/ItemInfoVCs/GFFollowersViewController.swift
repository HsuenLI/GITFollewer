//
//  GFFollowersViewController.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/14.
//

import UIKit

protocol GFFollowersVCDelegate: class {
    func didTapGetFollowers(for user: User)
}

class GFFollowersViewController: GFItemInfoViewController {
    
    weak var delegate: GFFollowersVCDelegate?
    
    init(user: User, delegate: GFFollowersVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate?.didTapGetFollowers(for: user)
    }
}
