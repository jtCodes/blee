//
//  extensions.swift
//  blee
//
//  Created by J Tan on 2/3/22.
//

import Foundation
import Apollo
import SwiftUI

extension Date {
    func toFuzzyDateInput() -> FuzzyDateInput  {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: self)
        
        return FuzzyDateInput(year: components.year,
                              month: components.month,
                              day: components.day)
    }
}

public typealias Json = [[String:Any?]]

extension Json: JSONDecodable{
    
    public init(jsonValue value: JSONValue) throws{
        guard let array = value as? Array else {
            guard let dict = value as? Dictionary<String, Any> else { throw JSONDecodingError.couldNotConvert(value: value, to: Dictionary<String, Any>.self)
            }
            self = .init(arrayLiteral: dict)
            return
        }
        self = array
    }
}

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}


