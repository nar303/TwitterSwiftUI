//
//  LoginView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 13.10.22.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    
    let backColor = Color(#colorLiteral(red: 0.2203676105, green: 0.631565094, blue: 0.9551432729, alpha: 1))
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("twitter-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 80)
                        .padding(.top, 88)
                        .padding(.bottom, 32)
                    
                    VStack(spacing: 20) {
                        TextInput(text: $email, placeholder: Text("Email"), type: .ordinary, imageName: "envelope")
                            .padding()
                            .background(Color(white: 1, opacity: 0.15))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        
                        TextInput(text: $password, placeholder: Text("Password"), type: .secure, imageName: "lock")
                            .padding()
                            .background(Color(white: 1, opacity: 0.15))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 20)
                    
                    HStack {
                        Spacer()
                        
                        Button {
                        } label: {
                            Text("Forgot Password?")
                                .font(.footnote)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top, 10)
                                .padding(.trailing, 20)
                        }
                        
                    }
                    
                    Button {
                    } label: {
                        Text("Sign in")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: UIScreen.main.bounds.width * 0.7, height: 50)
                            .backgroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                    }
                    
                    
                    Spacer()
                    
                    
                    HStack {
                        Text("Don't have an account?")
                            .font(.system(size: 14))
                        
                        NavigationLink {
                            RegistrationView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                }
                .ignoresSafeArea()
                .background(backColor)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
