//
//  extensions.swift
//  blee
//
//  Created by J Tan on 2/3/22.
//

import Foundation

extension Date {
    func toFuzzyDateInput() -> FuzzyDateInput  {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: self)
        
        return FuzzyDateInput(year: components.year,
                              month: components.month,
                              day: components.day)
    }
}

