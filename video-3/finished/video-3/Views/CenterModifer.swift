//
//  CenterModifer.swift
//  video-3
//
//  Created by Studio on 8/14/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack(content: {
            Spacer()
            content
            Spacer()
        })
    }
}
