//
//  ContentView.swift
//  video3
//
//  Created by Alok Choudhary on 8/11/21.
//

import SwiftUI

struct ContentView: View {
  @State private var isGridViewActive: Bool = false
  
  @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
  @State private var toolbarIcon: String = "square.grid.2x2"

  var body: some View {
    NavigationView {
      Group {
        if !isGridViewActive {
          List {
            CoverImageView()
              .frame(height: 300)
              .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

            Image(systemName: "\(1).circle")
            Image(systemName: "\(2).circle")
            Image(systemName: "\(3).circle")
            Image(systemName: "\(4).circle")
            Image(systemName: "\(5).circle")
           
            HStack {
                Spacer()
                CreditsView()
                Spacer()
            }
             // Fix 2 - Change above HStack is as Modifier
          }
        } else {
          ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                Image(systemName: "\(1).square")
                Image(systemName: "\(2).square")
                Image(systemName: "\(3).square")
                Image(systemName: "\(4).square")
                Image(systemName: "\(5).square")
            }
            .padding(10)
            .animation(.easeIn)
          }
        }
      }
      .navigationBarTitle("DebugApp")
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          HStack(spacing: 16) {
            Button(action: {
              print("List view is activated")
              isGridViewActive = false
            }) {
              Image(systemName: "square.fill.text.grid.1x2")
                .font(.title2)
                .foregroundColor(isGridViewActive ? .primary : .accentColor)
            }
            
            Button(action: {
              print("Grid view is activated")
              isGridViewActive = true
            }) {
              Image(systemName: toolbarIcon)
                .font(.title2)
                .foregroundColor(isGridViewActive ? .accentColor : .primary)
            }
          }
        }
      }
    }
  }
}


// Fix : 3 - Only do for Debug

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12")
  }
}
