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

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


