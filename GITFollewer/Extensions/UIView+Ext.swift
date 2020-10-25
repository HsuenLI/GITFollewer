//
//  UIView+Ext.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/25.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
