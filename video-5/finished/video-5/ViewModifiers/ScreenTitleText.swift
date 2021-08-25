//
//  ScreenTitleText.swift
//  video-4-finished
//
//  Created by coder on 8/20/21.
//

import SwiftUI

struct ScreenTitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.title)
    }
}
