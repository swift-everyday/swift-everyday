//
//  SocialLoginView.swift
//  video-4
//
//  Created by Studio on 8/20/21.
//

import SwiftUI

struct SocialLoginView: View {
    var body: some View {
        HStack(spacing: 25, content:  {
            Button(action: {}, label: {
                Image("icons8-facebook")
                    .resizable()
                    .renderingMode(.original)
                    .modifier(SocialButton())
            })
            
            Button(action: {}, label: {
                Image("icons8-instagram")
                    .resizable()
                    .renderingMode(.original)
                    .modifier(SocialButton())
            })
            
            Button(action: {}, label: {
                Image("icons8-linkedin_circled")
                    .resizable()
                    .renderingMode(.original)
                    .modifier(SocialButton())
            })
            
            Button(action: {}, label: {
                Image("icons8-twitter_circled")
                    .resizable()
                    .renderingMode(.original)
                    .modifier(SocialButton())
            })
            
        })
    }
}

struct SocialLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginView()
            .previewLayout(.sizeThatFits)
            .padding(5)
            .preferredColorScheme(.dark)
    }
}
