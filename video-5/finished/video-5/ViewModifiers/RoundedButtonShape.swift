//
//  RoundedButtonShape.swift
//  video-4-finished
//
//  Created by coder on 8/20/21.
//

import SwiftUI

struct RoundedButtonShape: ViewModifier {
    enum ButtonColor {
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
    
    let buttonColor: ButtonColor
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.vertical)
            .padding(.horizontal, 50)
            .background(buttonColor.backgroundColor())
            .clipShape(Capsule())
            .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5 )
    }
}
