//
//  ContentView.swift
//  video-4
//
//  Created by coder on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleState = true

    
    var body: some View {
        GeometryReader { _ in
            VStack {
                HStack(alignment: .center, spacing: 8) {
                    Spacer()
                    Text("Signup")
                    Toggle(isOn: $toggleState, label: { EmptyView()})
                    Text("Login")
                    Spacer()
                }
                .frame(width: 200, height: 60, alignment: .center)
                
                Spacer()
                Image("icons8-wordpress")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                
                if toggleState {
                    // login
                    LoginView()
                } else {
                    // signup
                    SignupView()
                }
                
                OrDividerView()
                SocialLoginView()
                Spacer()
            }
                .padding(.vertical)
        }
        .background(Color("DarkSlateBlue").edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
