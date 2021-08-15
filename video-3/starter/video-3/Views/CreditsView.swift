//
//  CreditsView.swift
//  video3
//
//  Created by coder on 8/14/21.
//  Copyright © 2021 Swift Everyday. All rights reserved.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("circle")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
        .font(.footnote)
      
      Text("""
  Copyright © Swift Everyday
  All right reserved
  Write Good Code
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    }
    .padding()
    .opacity(0.4)
  }
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

