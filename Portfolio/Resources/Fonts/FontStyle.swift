//
//  FontStyle.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import SwiftUI

enum FontStyle {
    case light
    case lightItalic
    case regular
    case regularLobster
    case medium
    case bold
    
    func font(size: Size) -> Font {
        switch self {
            case .light:
                return .custom(Name.light.rawValue, size: size.rawValue)
            case .lightItalic:
                return .custom(Name.lightItalic.rawValue, size: size.rawValue)
            case .regular:
                return .custom(Name.regular.rawValue, size: size.rawValue)
            case .regularLobster:
                return .custom(Name.regularLobster.rawValue, size: size.rawValue)
            case .medium:
                return .custom(Name.medium.rawValue, size: size.rawValue)
            case .bold:
                return .custom(Name.bold.rawValue, size: size.rawValue)
        }
    }
}

enum Name: String {
    case light = "CormorantGaramond-Light"
    case lightItalic = "CormorantGaramond-LightItalic"
    case regular = "CormorantGaramond-Regular"
    case regularLobster = "Lobster-Regular"
    case medium = "CormorantGaramond-Medium"
    case bold = "CormorantGaramond-Bold"
}

enum Size: CGFloat {
    case h14 = 14.0
    case h16 = 16.0
    case h18 = 18.0
    case h20 = 20.0
    case h24 = 24.0
}
