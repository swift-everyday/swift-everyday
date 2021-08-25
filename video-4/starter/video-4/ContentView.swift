//
//  ContentView.swift
//  video-4
//
//  Created by coder on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var toggleState = true
    @State private var retypedPassword = ""
    
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
                    ZStack(alignment: .bottom) {
                        VStack {
                            HStack {
                                Spacer(minLength: 0)
                                Text("Login")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            .padding(.top, 40)
                            
                            VStack {
                                HStack(spacing: 15) {
                                    Image(systemName: "envelope.fill")
                                        .foregroundColor(Color.white)
                                    TextField("Email Address", text: self.$email)
                                }
                                
                                Divider().background(Color.white.opacity(0.5))
                            }
                            .padding(.horizontal)
                            .padding(.top, 40)
                            
                            VStack {
                                HStack(spacing: 15) {
                                    Image(systemName: "eye.slash.fill")
                                        .foregroundColor(Color.white)
                                    SecureField("Password", text: self.$password)
                                }
                                
                                Divider().background(Color.white.opacity(0.5))
                            }
                            .padding(.horizontal)
                            .padding(.top, 30)
                            
                            HStack {
                                 Spacer(minLength: 0)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Fogot password?")
                                        .foregroundColor(.white.opacity(0.6))
                                })
                            }
                            .padding(.horizontal)
                            .padding(.top, 30)
                        }
                        .padding()
                        .padding(.bottom, 65)
                        .background(Color("Amethyst"))
                        .cornerRadius(35)
                        .padding(.horizontal, 20)
                        
                        //
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Login")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .padding(.horizontal, 50)
                                .background(Color("Rajah"))
                                .clipShape(Capsule())
                                .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5 )
                        })
                        .offset(y: 24)
                    }
                } else {
                    ZStack(alignment: .bottom) {
                        VStack {
                            HStack {
                                Text("Sign up")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Spacer(minLength: 0)
                            }
                            .padding(.top, 40)
                            
                            VStack {
                                HStack(spacing: 15) {
                                    Image(systemName: "envelope.fill")
                                        .foregroundColor(Color.white)
                                    TextField("Email Address", text: self.$email)
                                }
                                
                                Divider().background(Color.white.opacity(0.5))
                            }
                            .padding(.horizontal)
                            .padding(.top, 40)
                            
                            VStack {
                                HStack(spacing: 15) {
                                    Image(systemName: "eye.slash.fill")
                                        .foregroundColor(Color.white)
                                    SecureField("Password", text: self.$password)
                                }
                                
                                Divider().background(Color.white.opacity(0.5))
                            }
                            .padding(.horizontal)
                            .padding(.top, 30)
                            
                            VStack {
                                HStack(spacing: 15) {
                                    Image(systemName: "eye.slash.fill")
                                        .foregroundColor(Color.white)
                                    SecureField("Retype your password", text: self.$retypedPassword)
                                }
                                
                                Divider().background(Color.white.opacity(0.5))
                            }
                            .padding(.horizontal)
                            .padding(.top, 30)
                        }
                        .padding()
                        .padding(.bottom, 65)
                        .background(Color("CadetBlue"))
                        .cornerRadius(35)
                        .padding(.horizontal, 20)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Sign up")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .padding(.horizontal, 50)
                                .background(Color("Flame"))
                                .clipShape(Capsule())
                                .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5 )
                        })
                        .offset(y: 24)
                    }
                }
                
                HStack(spacing: 16) {
                    Rectangle()
                        .fill(Color("Flame"))
                        .frame(height: 1)
                    Text("OR")
                    Rectangle()
                        .fill(Color("Flame"))
                        .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.top, 50)
                
                Spacer()
                    .frame(width: .infinity, height: 30, alignment: .center)
                
                HStack(spacing: 25) {
                    Button(action: {}){
                        Image("icons8-facebook")
                            .resizable()
                            .renderingMode(.original)
                            .padding(2)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                    
                    Button(action: {}){
                        Image("icons8-instagram")
                            .resizable()
                            .renderingMode(.original)
                            .padding(2)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                    
                    Button(action: {}){
                        Image("icons8-linkedin_circled")
                            .resizable()
                            .renderingMode(.original)
                            .padding(2)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                    
                    Button(action: {}){
                        Image("icons8-twitter_circled")
                            .resizable()
                            .renderingMode(.original)
                            .padding(2)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                    
                }
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
