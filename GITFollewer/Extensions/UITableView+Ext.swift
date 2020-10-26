//
//  UITableView+Ext.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/25.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {  self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
