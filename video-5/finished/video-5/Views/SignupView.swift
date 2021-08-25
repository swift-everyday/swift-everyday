//
//  SignupView.swift
//  video-4
//
//  Created by Studio on 8/20/21.
//

import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var retypedPassword = ""
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack(content:  {
                HStack(content:  {
                    Text("Sign up")
                        .fontWeight(.bold)
                        .modifier(ScreenTitleText())
                    
                    Spacer(minLength: 0)
                })
                .padding(.top, 20)
                
                VStack(content:  {
                    HStack(spacing: 15, content:  {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color.white)
                        TextField("Email Address", text: self.$email)
                    })
                    
                    Divider().background(Color.white.opacity(0.5))
                })
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack(content:  {
                    HStack(spacing: 15, content:  {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.white)
                        SecureField("Password", text: self.$password)
                    })
                    
                    Divider().background(Color.white.opacity(0.5))
                })
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack(content:  {
                    HStack(spacing: 15, content:  {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.white)
                        SecureField("Retype your password", text: self.$retypedPassword)
                    })
                    
                    Divider().background(Color.white.opacity(0.5))
                })
                .padding(.horizontal)
                .padding(.top, 30)
            })
            .modifier(BackgroundCardShape(cardColor: .cadetBlue))
            .onAppear(perform: {
                print("On appear example")
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Sign up")
                    .modifier(RoundedButtonShape(buttonColor: .flame))
            })
            .offset(y: 24)
        })
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
            .padding(.bottom, 20)
    }
}
