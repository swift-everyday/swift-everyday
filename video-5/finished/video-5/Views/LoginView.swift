//
//  LoginView.swift
//  video-4
//
//  Created by Studio on 8/20/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack(content:  {
                    Spacer(minLength: 0)
                    Text("Login")
                        .fontWeight(.bold)
                        .modifier(ScreenTitleText())
                        
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
                
                HStack(content:  {
                     Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Fogot password?")
                            .foregroundColor(.white.opacity(0.6))
                    })
                })
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .modifier(BackgroundCardShape(cardColor: .amethyst))
            
            //
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Login")
                    .modifier(RoundedButtonShape(buttonColor: .rajah))
                    
                
            })
            .offset(y: 24)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
            .padding(.bottom, 20)
    }
}
