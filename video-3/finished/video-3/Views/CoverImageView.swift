//
//  CoverImageView.swift
//  video3
//
//  Created by coder on 8/14/21.
//  Copyright © 2021 Swift Everyday. All rights reserved.
//

import SwiftUI

struct CoverImageView: View {
  var body: some View {
        Image("Bitcoin1")
          .resizable()
          .scaledToFill()
  }
}

struct CoverImageView_Previews: PreviewProvider {
  static var previews: some View {
    CoverImageView()
      .previewLayout(.fixed(width: 400, height: 300))
  }
}
