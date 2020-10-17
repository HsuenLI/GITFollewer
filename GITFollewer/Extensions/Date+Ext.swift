//
//  Date+Ext.swift
//  GITFollewer
//
//  Created by Hsuen-Ju Li on 2020/10/17.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "MMM yyyy"
        dateFomatter.locale = Locale(identifier: "zh_Hant_TW")
        return dateFomatter.string(from: self)
    }
}
