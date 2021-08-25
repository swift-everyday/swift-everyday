//
//  BackgroundCardShape.swift
//  video-4
//
//  Created by Studio on 8/20/21.
//

import SwiftUI

struct BackgroundCardShape: ViewModifier {
    enum CardColor {
        case amethyst
        case cadetBlue
        case rajah
        case flame
        
        func backgroundColor() -> Color {
            switch self {
            case .amethyst:
                return Color("Amethyst")
            case .cadetBlue:
                return Color("CadetBlue")
            case .rajah:
                return  Color("Rajah")
            case .flame:
                    return Color("Flame")
            }
        }
    }
    
    let cardColor: CardColor
    
    func body(content: Content) -> some View {
        content
            .padding()
            .padding(.bottom, 65)
            .background(cardColor.backgroundColor())
            .cornerRadius(35)
            .padding(.horizontal, 20)
    }
}
