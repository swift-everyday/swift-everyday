//
//  SocialButton.swift
//  video-4-finished
//
//  Created by coder on 8/20/21.
//

import SwiftUI

struct SocialButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(2)
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}


