//
//  OrDividerView.swift
//  video-4
//
//  Created by Studio on 8/20/21.
//

import SwiftUI

struct OrDividerView: View {
    var body: some View {
        HStack(spacing: 16, content: {
            Rectangle()
                .fill(Color("Flame"))
                .frame(height: 1)
            Text("OR")
            Rectangle()
                .fill(Color("Flame"))
                .frame(height: 1)
        })
        .padding(.horizontal, 20)
        .padding([.top,.bottom], 30)
    }
}

struct OrDividerView_Previews: PreviewProvider {
    static var previews: some View {
        OrDividerView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            
    }
}
